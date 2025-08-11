import 'dart:developer';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../domain/repositories/database/local_database_repository.dart';
import '../api_status.dart';
import '../file_field.dart';
import '../network_repository.dart';

class DioNetworkRepository implements NetworkRepository {
  /// localhost
  String baseUrl = "http://localhost:3000";

  final LocalDatabaseRepository _localDatabaseRepository;

  DioNetworkRepository(this._localDatabaseRepository);

  var dio = Dio();

  initialize() {
    final cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      maxWidth: 90,
    ));
  }

  @override
  Future<dynamic> sendRequest(
      final String endpoint, {
        final NetworkRequestMode mode = NetworkRequestMode.get,
        final Map<String, dynamic> parameters = const {},
        Map<String, dynamic>? body,
        final bool isFormData = false,
        final bool getAllResponse = false,
        List<FileField>? fileFields,
      }) async {
    try {
      // Create a copy of the body to prevent modifying the original map
      final Map<String, dynamic> requestBody = body != null ? Map<String, dynamic>.from(body) : {};

      var headers = isFormData
          ? {'Content-Type': 'multipart/form-data'}
          : {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
      };
      headers.addAll({
        "Authorization": "Bearer ${await _localDatabaseRepository.getToken()}"
      });

      String method = '';
      switch (mode) {
        case NetworkRequestMode.post:
          method = 'POST';
          break;
        case NetworkRequestMode.get:
          method = 'GET';
          break;
        case NetworkRequestMode.delete:
          method = 'DELETE';
          break;
      // Add cases for other HTTP methods as needed
        default:
          throw Exception('Unsupported HTTP method: $mode');
      }

      if (fileFields != null && fileFields.isNotEmpty) {
        Map<String, dynamic> _fileMap = await _getFileFields(fileFields);
        requestBody.addAll(_fileMap);
      }

      Response response = await dio.request(
        '$baseUrl$endpoint',
        queryParameters: _removeNullAndEmptyValues(parameters),
        options: Options(
          method: method,
          headers: headers,
        ),
        data: isFormData ? FormData.fromMap(requestBody) : requestBody,
      );

      dynamic responseJson = response.data;
      return getAllResponse ? responseJson : responseJson['data'];
    } on DioException catch (e) {
      _handleException(e);
    } catch (e) {
      throw FormatException(e.toString());
    }
  }

  Future<Map<String, dynamic>> _getFileFields(
      List<FileField> fileFields) async {
    Map<String, dynamic> mediaFields = {};
    for (var fileFiled in fileFields) {
      List<MultipartFile> multipartFiles = [];
      for (var httpFile in fileFiled.files) {
        log("FILE NAME: ${httpFile.path.split('/').last}");
        // Determine MIME type dynamically based on file extension
        String mimeType = lookupMimeType(httpFile.path) ?? 'application/octet-stream';
        MultipartFile multipartFile = await MultipartFile.fromFile(
          httpFile.path,
          filename: httpFile.path.split('/').last,
          contentType: MediaType.parse(mimeType),
        );
        multipartFiles.add(multipartFile);
      }
      mediaFields.addAll({fileFiled.fieldName: multipartFiles});
    }
    return mediaFields;
  }

  _handleException(DioException exception) {
    debugPrint("status code : ${exception.response?.statusCode}");
    if (exception.type == DioExceptionType.connectionError) {
      throw ApiStatuses.INTERNET_CONNECTION_PROBLEM;
    }
    throw exception.response?.data['message'];
  }

  Map<String, dynamic> _removeNullAndEmptyValues(
      Map<String, dynamic> inputMap) {
    return Map.from(inputMap)
      ..removeWhere(
              (key, value) => value == null || (value is String && value.isEmpty));
  }
}
