import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:app_utils/app_utils.dart';

extension TimeCountDownExtend on DateTime? {}

extension TimeCountDownString on String? {
  int? getTimeEpoc({String? today}) {
    try {
      if (isNullOrEmpty) return null;

      return TimeCountDownUtils.countTimeEpoch(
        startValidDate: this,
        today: today,
      );
    } catch (e) {
      log('$e', error: e);
      return null;
    }
  }

  int? getDiff({String? today}) {
    try {
      if (isNullOrEmpty) return null;

      return TimeCountDownUtils.getDiff(
        startValidDate: this,
        today: today ?? TimeService().today().toServerTimeStr(),
      );
    } catch (e) {
      log('$e', error: e);
      return null;
    }
  }
}

class TimeCountDownUtils {
  TimeCountDownUtils._();

  static int? countTimeEpoch({String? startValidDate, String? today}) {
    var diff = getDiff(
      startValidDate: startValidDate,
      today: today,
    );

    var millisecondsSinceEpoch = TimeService().todayLocal().millisecondsSinceEpoch;
    return diff == null ? null : millisecondsSinceEpoch + diff;
  }

  static int? getDiff({String? startValidDate, String? today}) {
    var date = startValidDate.toDate();
    var todayDate = today?.toDate() ?? TimeService().todayUTC();

    return date == null || todayDate == null ? null : date.difference(todayDate).inMilliseconds;
  }
}
