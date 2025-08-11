import 'package:pikani/services/audio/audio_service.dart';
import 'package:pikani/services/audio/audio_service_imp.dart';

import '../services/notification/remote_notification/one_signal_notification_service.dart';
import '../services/notification/remote_notification/remote_notification_service.dart';
import '../services/permission/permission_service.dart';
import 'service_locator.dart';

class AppServices {

  static initialize() {
    getIt.registerSingleton<PermissionService>(PermissionHandler());
    getIt.registerLazySingleton<AudioService>(() => AudioServiceImp()..initialize());
    getIt.registerSingleton<RemoteNotificationService>(OneSignalNotificationService(permissionService: getIt())..initialize());
  }

}
