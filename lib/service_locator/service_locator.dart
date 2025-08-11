import 'package:get_it/get_it.dart';
import 'package:pikani/data/repositories/database/rest_api_repository.dart';
import 'package:pikani/domain/repositories/database/remote_database_repository.dart';
import '../core/alert/app_snack_bar.dart';
import '../core/navigation/app_navigator.dart';
import '../data/repositories/database/hive_database_repository.dart';
import '../domain/repositories/database/local_database_repository.dart';
import '../network/dio/dio_network_repository.dart';
import '../network/network_repository.dart';
import 'app_cubits.dart';
import 'app_services.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static initialize() async {
    getIt.registerSingleton<AppSnackBar>(AppSnackBar());
    getIt.registerSingleton<AppNavigator>(AppNavigator());

    /// services
    ///
    ///
    await AppServices.initialize();

    /// repositories
    ///
    ///
    getIt
        .registerSingleton<LocalDatabaseRepository>(HiveDatabaseRepository())
        .initialize();
    getIt.registerSingleton<NetworkRepository>(DioNetworkRepository(getIt()));
    getIt.registerSingleton<RemoteDatabaseRepository>(RestApiRepository()); 

    /// stores
    ///
    ///

    /// use_cases
    ///
    ///
    ///

    await AppCubits.initialize();
  }
}
