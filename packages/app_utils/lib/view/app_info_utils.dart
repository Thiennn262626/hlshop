import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoUtils {
  AppInfoUtils._();

  static Future<String?> getDeviceID() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor;
    } else if (Platform.isAndroid) {
      final androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id;
    }
    return null;
  }

  static Future<PackageInfo> getPackageInfo() async {
    return PackageInfo.fromPlatform();
  }

  static Future<String> get appName async {
    final packageInfo = await getPackageInfo();
    return packageInfo.appName;
  }

  static Future<String> get packageName async {
    final packageInfo = await getPackageInfo();
    return packageInfo.packageName;
  }

  static Future<String> get version async {
    final packageInfo = await getPackageInfo();
    return packageInfo.version;
  }

  static Future<String> get buildNumber async {
    final packageInfo = await getPackageInfo();
    return packageInfo.buildNumber;
  }

  static void dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
