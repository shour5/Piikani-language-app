import 'dart:io';
import 'dart:ui';

import 'package:pikani/services/notification/remote_notification/remote_notification_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_file/open_file.dart';

class PushNotificationHandler extends RemoteNotificationService {
    static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  @override
  Future<void> clearAllNotifications() {
    // TODO: implement clearAllNotifications
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() async {
        const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings("@mipmap/launcher_icon");

    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        final String? filePath = response.payload;
        if (filePath != null && filePath.isNotEmpty) {
          OpenFile.open(filePath);
        }
      },
    );

    if (Platform.isAndroid) {
      final androidPlugin = _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();
      await androidPlugin?.requestNotificationsPermission();
    } else {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(alert: true, badge: true, sound: true);
    }
  }

  @override
  Future<void> login({required String id}) {
    // TODO: implement login
    throw UnimplementedError();
  }

static Future<void> showDownloadNotification(String filePath) async {
  try {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'download_channel', // channel id
      'Image Downloads', // channel name
      channelDescription: 'Notifies when Image Downloads is complete',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'Image Downloaded',
      playSound: true,
      enableLights: true,
      // icon: 'android/app/src/main/res/mipmap-hdpi/launcher_icon.png', // Your custom icon here
      styleInformation: BigTextStyleInformation(
        'Tap to open Image',
        contentTitle: 'Image Download Complete', // Larger title for the notification
      ),
      // largeIcon: DrawableResourceAndroidBitmap('android/app/src/main/res/playstore-icon.png'), // Optional: a large icon (for the large notification view)
      color: Color(0xFF6200EE), // Notification color (purple, you can change it)
      // styleInformation: BigTextStyleInformation('Tap to open Image'),
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: DarwinNotificationDetails(),
    );

    // Choose a heading description and name based on preference
    await _flutterLocalNotificationsPlugin.show(
      0,
      'Image Download Complete', // Heading Name
      'Your image has been successfully downloaded! Tap to view and enjoy.', // Description
      notificationDetails,
      payload: filePath,
    );
  } catch (e) {
    print('Notification error: $e');
  }
}
}
