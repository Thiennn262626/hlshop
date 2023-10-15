// import 'package:hlshop/all_file/all_file.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
// import 'package:socket_io_client/socket_io_client.dart';
//
// /// Note that .connect() should not be called if autoConnect: true (by default, it's enabled to true)
// class SocketIOService {
//   SocketIOService._();
//
//   static final SocketIOService _instance = SocketIOService._();
//
//   static SocketIOService get instance {
//     return _instance;
//   }
//
//   final IO.Socket socket = IO.io(
//     F.SOCKET_URL,
//     OptionBuilder()
//         .setTransports(['websocket']) // for Flutter or Dart VM
//         // .setExtraHeaders({'token': getIt<UserSecureStorage>().token})
//         .enableReconnection()
//         .setReconnectionAttempts(1000)
//         .setReconnectionDelay(1000)
//         .setReconnectionDelayMax(10000)
//         .build(),
//   );
//
//   void init() {
//     socket.onConnect((_) {
//       logger.i('Socket-onConnect');
//       logger.i('socket.id ${socket.id}');
//     });
//     socket.onDisconnect((_) {
//       logger.e('Socket-onDisconnect');
//     });
//     socket.onError((e) {
//       logger.e('Socket-onError: $e');
//     });
//     socket.onAny((string, data) {
//       logger.i('Socket-any: $string \nData: $data');
//       if (data != 'disconnect') {
//         // TODO temporary ignore this until server fix it
//         logger.i('Socket-any: $string \nData: $data');
//       }
//     });
//     socket.onConnectError((e) {
//       logger.i('Socket-onConnectError $e');
//     });
//   }
//
//   void setToken({required String token}) {
//     logger.i('setToken socket $token');
//     socket.io.options['extraHeaders'] = {'token': token};
//     socket.io
//       ..disconnect()
//       ..connect();
//   }
//
//   void clearToken() {
//     socket.io.options['extraHeaders'] = {'token': ''};
//     socket.io
//       ..disconnect()
//       ..connect();
//   }
//
//   void close() {
//     socket.dispose();
//   }
//
//   void emit({required String event, required String data}) {
//     socket.emit(event, data);
//   }
//
//   void listen(String key, Function(NotificationModel notification) onChange) {
//     socket.on(key, (notifyData) {
//       try {
//         final map = castOrNull<Map<String, dynamic>>(notifyData);
//         if (map == null) {
//           return;
//         }
//         var notification = NotificationModel.fromJson(map);
//         onChange(notification);
//       } catch (e) {
//         log(e.toString(), error: e);
//       }
//     });
//   }
//
//   void listenData(String key, dynamic Function(NotificationModel notification, Map? data) onChange) {
//     socket.on(key, (notifyData) {
//       NotificationModel? notification;
//       Map? data;
//       try {
//         if (notifyData is Map<String, dynamic>) {
//           notification = NotificationModel.fromJson(notifyData);
//           final notificationData = notification.data;
//           if (notificationData is Map) {
//             data = notificationData;
//           } else if (notificationData is String) {
//             final rs = notificationData.isNotNullOrEmpty == true ? json.decode(notificationData) : null;
//             data = castOrNull<Map?>(rs);
//           }
//         }
//       } catch (e) {
//         log(e.toString(), error: e);
//       }
//       if (notification != null && data != null) {
//         onChange(notification, data);
//       }
//     });
//   }
//
//   void removeListenDate(dynamic Function(dynamic notification, dynamic data) onChange) {
//     socket.offAny(onChange);
//   }
//
//   void listenChange(String key, dynamic Function(dynamic data) handler) {
//     socket.on(key, handler);
//   }
//
//   void removeListenChange(String key, dynamic Function(dynamic data) handler) {
//     socket.off(key, handler);
//   }
//
//   static NotificationFullData<T>? getNotificationValue<T>({
//     dynamic notifyData,
//     NotificationType? notificationType,
//     T Function(Map<String, dynamic> json)? formJson,
//   }) {
//     NotificationModel? notification;
//     Map? data;
//     try {
//       if (notifyData is Map<String, dynamic>) {
//         notification = NotificationModel.fromJson(notifyData);
//         final notificationData = notification.data;
//         if (notificationData is Map) {
//           data = notificationData;
//         } else if (notificationData is String) {
//           final rs = notificationData.isNotNullOrEmpty == true ? json.decode(notificationData) : null;
//           data = castOrNull<Map?>(rs);
//         }
//       }
//       if (notificationType != null && notification?.type != notificationType) {
//         return null;
//       }
//
//       if (notification != null) {
//         return NotificationFullData(
//           data: formJson?.call(data as Map<String, dynamic>),
//           notificationModel: notification,
//         );
//       }
//     } catch (e) {
//       log(e.toString(), error: e);
//     }
//     return null;
//   }
// }
//
// class NotificationFullData<T> {
//   T? data;
//   NotificationModel notificationModel;
//
// //<editor-fold desc="Data Methods">
//
//   NotificationFullData({
//     required this.data,
//     required this.notificationModel,
//   });
//
//   @override
//   bool operator ==(Object other) => identical(this, other) || (other is NotificationFullData && runtimeType == other.runtimeType && data == other.data && notificationModel == other.notificationModel);
//
//   @override
//   int get hashCode => data.hashCode ^ notificationModel.hashCode;
//
//   @override
//   String toString() {
//     return 'NotificationFullData{' + ' data: $data,' + ' notificationModel: $notificationModel,' + '}';
//   }
//
//   NotificationFullData copyWith({
//     T? data,
//     NotificationModel? notificationModel,
//   }) {
//     return NotificationFullData(
//       data: data ?? this.data,
//       notificationModel: notificationModel ?? this.notificationModel,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'data': this.data,
//       'notificationModel': this.notificationModel,
//     };
//   }
//
//   factory NotificationFullData.fromMap(Map<String, dynamic> map) {
//     return NotificationFullData(
//       data: map['data'] as T,
//       notificationModel: map['notificationModel'] as NotificationModel,
//     );
//   }
//
// //</editor-fold>
// }
