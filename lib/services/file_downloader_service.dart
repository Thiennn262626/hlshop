// import 'dart:isolate';
// import 'dart:ui';
//
// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/core/utils/file_utils.dart';
// import 'package:hlshop/services/user_secure_storage_service.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
// import 'package:android_path_provider/android_path_provider.dart';
// import 'package:path_provider/path_provider.dart';
//
// class FileDownloader {
//   FileDownloader._();
//
//   static FileDownloader? _instance;
//
//   static FileDownloader get instance {
//     _instance ??= FileDownloader._();
//     _instance?.registerCallBack();
//     return _instance!;
//   }
//
//   final ReceivePort _port = ReceivePort();
//
//   bool isListen = false;
//
//   final taskUpdateStream = StreamController<TaskInfo?>.broadcast();
//
//   void _bindBackgroundIsolate() {
//     if (isListen) return;
//
//     bool isSuccess = IsolateNameServer.registerPortWithName(
//         _port.sendPort, 'downloader_send_port');
//     if (!isSuccess) {
//       _unbindBackgroundIsolate();
//       _bindBackgroundIsolate();
//       return;
//     }
//     isListen = true;
//     _port.listen((dynamic data) {
//       logger.i('------- UI Isolate Callback: $data');
//       String? id = data[0];
//       DownloadTaskStatus? status = data[1];
//       int? progress = data[2];
//
//       logger.i('task?.taskId id $id');
//       taskUpdateStream.sink.add(TaskInfo(
//         link: '',
//         taskId: id,
//         progress: progress ?? 0,
//         status: status ?? DownloadTaskStatus.undefined,
//       ));
//       if (status == DownloadTaskStatus.complete) {
//         FileDownloader.instance.openDownloadedFile(id);
//       }
//     });
//   }
//
//   void _unbindBackgroundIsolate() {
//     IsolateNameServer.removePortNameMapping('downloader_send_port');
//     isListen = false;
//   }
//
//   Future<String> downloadFile(String? url) async {
//     if (url.isNullOrEmpty()) return Future.error('Null link');
//     _bindBackgroundIsolate();
//
//     var localPath = await findLocalPath();
//     var token = getIt<UserSecureStorage>().token;
//     final taskId = await FlutterDownloader.enqueue(
//       url: url ?? '',
//       savedDir: localPath ?? '/',
//       // headers: {"Authorization": 'Bearer $token'},
//       showNotification: true,
//       openFileFromNotification: true,
//       saveInPublicStorage: true,
//     );
//
//     return Future.value(taskId);
//   }
//
//   Future<bool> openDownloadedFile(String? taskId) {
//     logger.i('openDownloadedFile $taskId');
//     if (taskId.isNullOrEmpty()) {
//       logger.i('openDownloadedFile');
//       return FlutterDownloader.open(taskId: taskId ?? '');
//     } else {
//       return Future.value(false);
//     }
//   }
//
//   Future<bool> prepare() async {
//     final permissionGranted = await PermissionUtils.requestStorage();
//
//     if (permissionGranted) {
//       await prepareSaveDir();
//       return true;
//     }
//     return false;
//   }
//
//   Future<String?> findLocalPath() async {
//     String? externalStorageDirPath;
//     if (Platform.isAndroid) {
//       try {
//         externalStorageDirPath = await AndroidPathProvider.downloadsPath;
//       } catch (e) {
//         final directory = await getExternalStorageDirectory();
//         externalStorageDirPath = directory?.path;
//       }
//     } else if (Platform.isIOS) {
//       externalStorageDirPath =
//           (await getApplicationDocumentsDirectory()).absolute.path;
//     }
//     return externalStorageDirPath;
//   }
//
//   Future<bool> prepareSaveDir() async {
//     final localPath = (await findLocalPath()) ?? '/';
//     final savedDir = Directory(localPath);
//     bool hasExisted = await savedDir.exists();
//     if (!hasExisted) {
//       savedDir.create();
//     }
//     return true;
//   }
//
//   void registerCallBack() {
//     FlutterDownloader.registerCallback(downloadCallback);
//   }
//
//   static void downloadCallback(
//       String id, DownloadTaskStatus status, int progress) {
//     logger.i(
//         'Background Isolate Callback: task ($id) is in status ($status) and process ($progress)');
//     final SendPort send =
//         IsolateNameServer.lookupPortByName('downloader_send_port')!;
//     send.send([id, status, progress]);
//   }
//
//   Future<dynamic> cancel({required String? taskId}) {
//     if (taskId.isNullOrEmpty()) return Future.error('Task id null');
//
//     return FlutterDownloader.cancel(taskId: taskId ?? '');
//   }
//
//   Future<dynamic> pause({required String? taskId}) {
//     if (taskId.isNullOrEmpty()) return Future.error('Task id null');
//
//     return FlutterDownloader.pause(taskId: taskId ?? '');
//   }
//
//   Future<dynamic> resume({required String? taskId}) {
//     if (taskId.isNullOrEmpty()) return Future.error('Task id null');
//
//     return FlutterDownloader.resume(taskId: taskId ?? '');
//   }
//
//   Future<dynamic> retry({required String? taskId}) {
//     if (taskId.isNullOrEmpty()) return Future.error('Task id null');
//
//     return FlutterDownloader.retry(taskId: taskId ?? '');
//   }
//
//   Future<dynamic> remove({required String? taskId}) {
//     if (taskId.isNullOrEmpty()) return Future.error('Task id null');
//
//     return FlutterDownloader.remove(
//         taskId: taskId ?? '', shouldDeleteContent: true);
//   }
// }
//
// class TaskInfo {
//   final String link;
//   final String? taskId;
//   final int progress;
//   final DownloadTaskStatus status;
//
//   String get extension => FileUtils.getExtensionFormPath(link);
//
//   String get name => FileUtils.getNameFormPath(link);
//
// //<editor-fold desc="Data Methods">
//
//   const TaskInfo({
//     required this.link,
//     this.taskId,
//     this.progress = 0,
//     this.status = DownloadTaskStatus.undefined,
//   });
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       (other is TaskInfo &&
//           runtimeType == other.runtimeType &&
//           link == other.link &&
//           taskId == other.taskId &&
//           progress == other.progress &&
//           status == other.status);
//
//   @override
//   int get hashCode =>
//       link.hashCode ^ taskId.hashCode ^ progress.hashCode ^ status.hashCode;
//
//   @override
//   String toString() {
//     return 'TaskInfo{' +
//         ' link: $link,' +
//         ' taskId: $taskId,' +
//         ' progress: $progress,' +
//         ' status: $status,' +
//         '}';
//   }
//
//   TaskInfo copyWith({
//     String? link,
//     String? taskId,
//     int? progress,
//     DownloadTaskStatus? status,
//   }) {
//     return TaskInfo(
//       link: link ?? this.link,
//       taskId: taskId ?? this.taskId,
//       progress: progress ?? this.progress,
//       status: status ?? this.status,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'link': this.link,
//       'taskId': this.taskId,
//       'progress': this.progress,
//       'status': this.status,
//     };
//   }
//
//   factory TaskInfo.fromMap(Map<String, dynamic> map) {
//     return TaskInfo(
//       link: map['link'] as String,
//       taskId: map['taskId'] as String,
//       progress: map['progress'] as int,
//       status: map['status'] as DownloadTaskStatus,
//     );
//   }
//
// //</editor-fold>
// }
