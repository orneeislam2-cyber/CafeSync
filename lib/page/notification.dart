
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {

  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  static Future init() async {

    // 🔔 permission request
    await _messaging.requestPermission();

    // 🔑 token print
    String? token = await _messaging.getToken();
    print("Device Token: $token");

    // 📱 foreground notification
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Notification Received: ${message.notification?.title}");
    });
  }
}