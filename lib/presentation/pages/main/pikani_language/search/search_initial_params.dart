
import 'package:pikani/core/navigation/route_params.dart';

class SearchInitialParams extends RouteParams{

const SearchInitialParams();

  @override
  Map<String, dynamic> toMap() {
    return {};
  }

  static SearchInitialParams fromMap(Map<String, dynamic> map) {
    return SearchInitialParams();
  }

}