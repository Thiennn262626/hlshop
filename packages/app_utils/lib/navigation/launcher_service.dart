import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherService {
  static final LauncherService _singleton = LauncherService._internal();

  factory LauncherService() {
    return _singleton;
  }

  LauncherService._internal();

  Future<bool> callNumber(String phone) async {
    final Uri uri = Uri(
      scheme: 'tel',
      path: phone,
    );
    if (!await canLaunch(uri.toString())) {
      return false;
    }
    await launch(uri.toString());
    return true;
  }

  Future<bool> showURL({required BuildContext context, required String url, LaunchMode? launchMode}) async {
    var urlFinal = url;
    if (!urlFinal.contains('http')) {
      urlFinal = 'https://$urlFinal';
    }
    final uri = Uri.parse(urlFinal);

    var mode = launchMode ?? (Theme.of(context).platform == TargetPlatform.android ? LaunchMode.externalNonBrowserApplication : LaunchMode.externalApplication);

    if (!await canLaunchUrl(uri)) {
      return false;
    }
    await launchUrl(
      uri,
      mode: mode,
      webViewConfiguration: const WebViewConfiguration(
        enableJavaScript: true,
        enableDomStorage: true,
      ),
      webOnlyWindowName: '_blank',
    );
    return true;
  }

  Future<bool> emailTo({required String email}) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (!await canLaunchUrl(uri)) {
      return false;
    }
    await launchUrl(uri);
    return true;
  }
}
