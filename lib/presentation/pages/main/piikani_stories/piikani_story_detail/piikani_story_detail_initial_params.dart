import '../../../../../core/navigation/route_params.dart';

class PiikaniStoryDetailInitialParams extends RouteParams {
  final String id;

  const PiikaniStoryDetailInitialParams({required this.id});

  @override
  Map<String, dynamic> toMap() {
    return {
      "id":id,
    };
  }

  static PiikaniStoryDetailInitialParams fromMap(Map<String, dynamic> map) {
    return PiikaniStoryDetailInitialParams(
      id: map['id']
    );
  }
}
