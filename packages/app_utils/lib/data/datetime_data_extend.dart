// ignore_for_file: unnecessary_this
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

extension DateTimeDataExtendStringNullable on String? {
  String getDatetime() {
    String date = this?.substring(0, 10) ?? '';
    String time = this?.substring(11, 19) ?? '';
    var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(
      date + ' ' + time,
      true,
    );
    var dateLocal = dateTime.toLocal();
    return dateLocal.toString().substring(0, 16);
  }
}

extension DateTimeExtension on DateTime {
  DateTime clearTime() {
    return DateTime(this.year, this.month, this.day);
  }

  DateTime setTime({int? newHour, int? newMinute}) {
    var time = toLocal();
    return DateTime(
      time.year,
      time.month,
      time.day,
      newHour ?? time.hour,
      newMinute ?? time.minute,
      time.second,
      time.millisecond,
      time.microsecond,
    );
  }
}
