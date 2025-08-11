import 'dart:io';
import 'dart:math';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pikani/core/alert/app_snack_bar.dart';
import 'package:pikani/services/notification/push_notification_handler.dart';
import 'piikani_clans_initial_params.dart';
import 'piikani_clans_state.dart';
import 'piikani_clans_navigator.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

class PiikaniClansCubit extends Cubit<PiikaniClansState> {
  PiikaniClansNavigator navigator;
  AppSnackBar snackBar;
  PiikaniClansCubit({required this.navigator, required this.snackBar})
    : super(PiikaniClansState.initial());

  BuildContext get context => navigator.context;

  onInit(PiikaniClansInitialParams initialParams) {}

  Future<bool> requestStoragePermission() async {
    var status = await Permission.storage.request();
    return status.isGranted;
  }


int generateTwoDigitRandomNumber() {
  final random = Random();
  return 10 + random.nextInt(90); // 10 to 99 inclusive
}
  Future<void> downloadAssetToSelectedFolder(
    BuildContext context,
    String assetPath,
    String fileName,
  ) async {
    try {
   
      // Load asset and write to the selected folder
      ByteData data = await rootBundle.load(assetPath);

      Directory directory = (await getExternalStorageDirectories(type: StorageDirectory.downloads))?.first ?? Directory("");


      // if (await requestStoragePermission()) {
      //   File file = File(targetPath);
      //   await file.writeAsBytes(bytes);
      // } else {
      //   print("Permission denied");
      // }

    if (true) {
 
      String directory = await FileSaver.instance.saveFile(name: fileName,bytes: data.buffer.asUint8List(), ext: 'png', mimeType: MimeType.png,);

      print(directory.toString());

      PushNotificationHandler.showDownloadNotification(directory);

      snackBar.show(
        "File saved successfully",
        snackBarType: SnackBarType.SUCCESS,
      );
   
    }

  
      
      // // Ask user to pick a destination folder
      // String? directoryPath = await FilePicker.platform.getDirectoryPath();

      // if (directoryPath == null) {
      //   // User cancelled folder selection
      //   return;
      // }

      // String targetPath = '$directoryPath/$fileName';

      // // Show loading dialog
      // showDialog(
      //   context: context,
      //   barrierDismissible: false,
      //   builder:
      //       (_) => const AlertDialog(
      //         content: Row(
      //           children: [
      //             CircularProgressIndicator(),
      //             SizedBox(width: 16),
      //             Text("Saving file..."),
      //           ],
      //         ),
      //       ),
      // );

      // // Simulate delay
      // await Future.delayed(Duration(milliseconds: 500));

      // // Load asset and write to the selected folder
      // ByteData data = await rootBundle.load(assetPath);
      // List<int> bytes = data.buffer.asUint8List();

      // if (await requestStoragePermission()) {
      //   File file = File(targetPath);
      //   await file.writeAsBytes(bytes);
      // } else {
      //   print("Permission denied");
      // }

      // Navigator.of(context).pop(); // Close loading dialog

    } catch (e) {
      snackBar.show(
        "Failed to save file: $e",
        snackBarType: SnackBarType.ERROR,
      );
    }
  }

  
}
