import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:velocity_x/velocity_x.dart';

class ToastUtils {
  static Future<bool?> showToast({required BuildContext context, required String msg, Duration? duration}) {
    if (msg.isNullOrEmpty) {
      return Future.value(false);
    }

    return Fluttertoast.showToast(
        msg: msg, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 1, backgroundColor: context.theme.colorScheme.background, textColor: context.theme.colorScheme.onBackground, fontSize: 16.0);
  }
}
