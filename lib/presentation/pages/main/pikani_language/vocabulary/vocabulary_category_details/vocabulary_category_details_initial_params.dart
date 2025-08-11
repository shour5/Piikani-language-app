import 'package:pikani/core/navigation/route_params.dart';

class VocabularyCategoryDetailsInitialParams extends RouteParams {
  String categoryTitle;

  VocabularyCategoryDetailsInitialParams({required this.categoryTitle});

  @override
  Map<String, dynamic> toMap() {
    return {"categoryTitle": categoryTitle};
  }

  static VocabularyCategoryDetailsInitialParams fromMap(
    Map<String, dynamic> map,
  ) {
    return VocabularyCategoryDetailsInitialParams(
       categoryTitle: map["categoryTitle"], // decode if it's a JSON string
    );
  }
}
