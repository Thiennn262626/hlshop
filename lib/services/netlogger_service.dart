import 'package:hlshop/all_file/all_file.dart';
import 'package:network_logger/network_logger.dart';

class NetLoggerService {
  static final NetLoggerService _shared = NetLoggerService._internal();
  NetworkLoggerShake? shakeInstance;
  OverlayEntry? overlayInstance;

  NetLoggerService._internal();

  factory NetLoggerService() {
    return _shared;
  }

  Future<void> action(BuildContext context, {bool isEnable = false}) async {
    if (isEnable) {
      final deviceInfo = DeviceInfoPlugin();
      var isCanShake = false;
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        isCanShake = androidInfo.isPhysicalDevice;
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        isCanShake = iosInfo.isPhysicalDevice;
      }

      if (isCanShake) {
        //We can ignore baseUrl inside the list to easier see endpoint once.
        final urls = [
          'https://hl-shop.azurewebsites.net/',
        ];
        if (shakeInstance == null) {
          shakeInstance = NetworkLoggerShake();
        }

        shakeInstance?.attachTo(
          context,
          isHiddenBaseUrl: true,
        );
      } else {
        if (overlayInstance == null) {
          overlayInstance = NetworkLoggerOverlay.attachTo(context);
        }
      }
    } else {
      shakeInstance?.removeListener();
      overlayInstance?.remove();
      overlayInstance = null;
      shakeInstance = null;
    }
  }
}
