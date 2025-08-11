import '../../../../../core/navigation/route_params.dart';

class SignLanguageCategoryDetailInitialParams extends RouteParams {
  final String id;
  const SignLanguageCategoryDetailInitialParams({required this.id});

  @override
  Map<String, dynamic> toMap() {
    return {
      "id":id
    };
  }

  static SignLanguageCategoryDetailInitialParams fromMap(
    Map<String, dynamic> map,
  ) {
    return SignLanguageCategoryDetailInitialParams(
      id: map['id']
    );
  }
}
