import 'package:pikani/core/navigation/route_params.dart';

class PikaniAiPhotoDetailInitialParams extends RouteParams {
  final String id;

  const PikaniAiPhotoDetailInitialParams({required this.id});

  @override
  Map<String, dynamic> toMap() {
    return {"id": id};
  }

  static PikaniAiPhotoDetailInitialParams fromMap(Map<String, dynamic> map) {
    return PikaniAiPhotoDetailInitialParams(id: map['id']);
  }
}
