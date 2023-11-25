import 'package:url_launcher/url_launcher.dart';

class LaunchUrl {
  LaunchUrl._();

  static Future<void> openUrl(Uri url) async {
    if (!await launchUrl(url)) {
      print('Could not launch $url');
      return;
    }
  }
}
