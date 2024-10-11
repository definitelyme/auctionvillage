library firebase_messaging_service.dart;

import 'package:auctionvillage/core/data/http_client/index.dart';
import 'package:auctionvillage/core/data/repository/base_repo.dart';
import 'package:auctionvillage/core/data/response/any/app_http_response.dart';
import 'package:auctionvillage/core/domain/facades/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@Singleton(as: MessagingFacade)
class InAppMessaging extends MessagingFacade with BaseRepository {
  @override
  final AwesomeNotifications awesomeNotifications;

  @override
  final InternetConnectionChecker connectionChecker;

  @override
  final Connectivity connectivity;

  @override
  final FirebaseMessaging firebaseMessaging;

  // final UtilitiesRemote _utilitiesRemote;

  bool subscribedCreatedStream = false;
  bool subscribedActionStream = false;
  bool subscribedOnMessage = false;
  bool subscribedOnMessageOpenedApp = false;

  InAppMessaging(
    this.firebaseMessaging,
    // this._utilitiesRemote,
    this.connectionChecker,
    this.connectivity,
    this.awesomeNotifications,
  );

  @override
  Future<void> create() async {
    // throw UnimplementedError();
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 282393,
        channelKey: MessagingFacade.pushNotificationChannel.channelKey!,
        title: 'Hello',
        body: 'Hello World',
        // icon: 'resource://drawable/res_notification_app_icon.png',
        // icon: AppAssets.logoImage,
        bigPicture: 'asset://assets/images/dashboard/square_cake.png',
        notificationLayout: NotificationLayout.BigPicture,
      ),
    );
  }

  @override
  @disposeMethod
  void dispose() {
    // awesomeNotifications.actionSink.close();
    // awesomeNotifications.createdSink.close();
    awesomeNotifications.dispose();
  }

  @override
  Future<AppHttpResponse?> registerDevice() async {
    final _conn = await checkConnectivity();

    return _conn.fold(
      () async {
        try {
          // final token = await firebaseMessaging.getToken();

          // log.w('Token ==> $token');
          // log.w('Device type ==> ${Utils.platform_(material: 'android', cupertino: 'ios')}');

          // await _utilitiesRemote.registerDevice(
          //   deviceType: Utils.platform_(material: 'android', cupertino: 'ios')!,
          //   deviceId: '$token',
          // );

          return null;
        } on AppHttpResponse catch (e) {
          return e;
        } on AppNetworkException catch (e) {
          return e.asResponse();
        }
      },
      (f) => throw f,
    );
  }

  @override
  Future<void> setup(BuildContext context, [bool isAuthenticated = false]) async {
    try {
      await MessagingFacade.requestPermission(
        context,
        channelKey: MessagingFacade.pushNotificationChannel.channelKey,
        permissionList: _permissions,
      );

      final isAllowed = await awesomeNotifications.isNotificationAllowed();

      if (isAllowed) {
        await _continueIfAllowed();
        if (isAuthenticated) await registerDevice();
      }
    } catch (e) {
      log.e('Oops! error in Firebase Messaging Service.setup()', e);
    }
  }

  static List<NotificationPermission> get _permissions => [
        NotificationPermission.Alert,
        NotificationPermission.Sound,
        NotificationPermission.Badge,
        NotificationPermission.Light,
        // NotificationPermission.Provisional,
        NotificationPermission.Vibration,
      ];

  Future<void> _continueIfAllowed() async {
    if (!subscribedCreatedStream) {
      // awesomeNotifications.createdStream.listen(_handleCreated);
      subscribedCreatedStream = true;
    }

    if (!subscribedActionStream) {
      // awesomeNotifications.actionStream.listen(_handleAction);
      subscribedActionStream = true;
    }

    // Enable Fireground Notification
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    // Get any messages which caused the application to open from
    // a terminated state.
    final initialMessage = await firebaseMessaging.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) _handleMessage(initialMessage);

    if (!subscribedOnMessage) {
      FirebaseMessaging.onMessage.listen(_handleMessage);
      subscribedOnMessage = true;
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    if (!subscribedOnMessageOpenedApp) {
      FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
      subscribedOnMessageOpenedApp = true;
    }

    try {
      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    } catch (e, tr) {
      await Utils.reportFlutterError(e, tr);
      log.e(e, e, tr);
    }
  }

  void _handleMessage(RemoteMessage message) async {
    // print('Message data: ${message.data}');
    await AwesomeNotifications().createNotificationFromJsonData(message.data);
  }

  void _handleCreated(ReceivedNotification notification) {
    App.logEvent('notification-created', parameters: notification.toMap(), global: true);
  }

  void _handleAction(ReceivedAction action) {
    App.logEvent('notification-action', parameters: action.toMap(), global: true);
    // ignore: unused_element
    log.wtf('Notification action should be done here');
    log.i('Button key input is: ${action.buttonKeyInput}\n'
        'Action date is: ${action.actionDate}\n'
        'Dismissed Date is: ${action.dismissedDate}\n'
        'Button Key pressed is: ${action.buttonKeyPressed}\n'
        'Payload is: ${action.payload}\n'
        'Body is: ${action.body}\n'
        'Body without HTML is: ${action.bodyWithoutHtml}\n'
        // 'To Map is: ${event.toMap()}\n',
        );
  }
}

// Declared as global, outside of any class
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.

  await Firebase.initializeApp();

  // Use this method to automatically convert the push data, in case you gonna use our data standard
  await AwesomeNotifications().createNotificationFromJsonData(message.data);
}
