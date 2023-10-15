import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:app_utils/time/time_service.dart';
import 'package:intl/intl.dart';

extension DateExtend on DateTime {
  DateTime applied(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }

  String toSimpleDateLocale() {
    return TimeService().dateToStrLocale(this, format: TimeService().formatSimpleDate);
  }

  String toSimpleTimeLocale() {
    return TimeService().dateToStrLocale(this, format: TimeService().formatSimpleHour);
  }

  String toSimpleDateTimeLocale() {
    return TimeService().dateToStrLocale(this, format: TimeService().formatUserDateTimeFull);
  }
}

extension DateNullExtend on DateTime? {
  String? toSimpleDateLocale() {
    if (this == null) return null;
    return TimeService().dateToStrLocale(this!, format: TimeService().formatSimpleDate);
  }

  bool? isSameDate(DateTime? date) {
    if (this == null || date == null) return null;

    return TimeService().isSameDay(this!, date);
  }

  bool? isSameMonth(DateTime? date) {
    if (this == null || date == null) return null;

    return DateUtils.isSameMonth(this!, date);
  }

  String? toServerTimeStr() {
    if (this == null) return null;

    return '${TimeService().dateToStr(this!, format: DateFormat(TimeService().formatServer.replaceFirst('Z', '')))}Z';
  }

  String? toUTCAndBeginOfDateStr() {
    if (this == null) return null;
    return this!.toUtc().changeTime().toString();
  }

  String? toUTCAndEndOfDateStr() {
    if (this == null) return null;
    return this!.toUtc().addOneDay().toString();
  }

  DateTime? changeTime({int hour = 0, int min = 0, int sec = 0}) {
    if (this == null) return null;

    return TimeService().changeTime(this, hour, min, sec);
  }

  DateTime? addOneDay() {
    if (this == null) return null;
    return this!.add(const Duration(days: 1));
  }

// String? toString() {
//   if (this == null) return null;
//
//   return '${TimeService().dateToStr(this!, format: DateFormat(TimeService().formatServer.replaceFirst('Z', '')))}Z';
// }
}

extension TimeString on String? {
  String? toSimpleMonthYear() {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: TimeService().formatSimpleMonthYear);
  }

  String? toDateStrFormat(String format) {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: format);
  }

  String? toSimpleMonthDateLocale() {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: TimeService().formatSimpleMonthDate);
  }

  String? toSimpleDateLocale() {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: TimeService().formatSimpleDate);
  }

  String? toSimpleDateTimeLocale() {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: TimeService().formatUserDateTimeFull);
  }

  String? toSimpleDate() {
    if (isNullOrEmpty) return null;
    return TimeService().dateStrFormatLocale(this, format: TimeService().formatSimpleDate);
  }

  DateTime? toDateLocale() {
    if (isNullOrEmpty) return null;
    return TimeService().strUtcToDateLocale(this);
  }

  DateTime? toDate() {
    if (isNullOrEmpty) return null;
    return TimeService().strUtcToDate(this);
  }

  String? toTimeAgo() {
    if (isNullOrEmpty) return null;
    return TimeService().getTimeAgo(this);
  }

  DateFormat toDateFormat() {
    return DateFormat(isNullOrEmpty ? TimeService().formatSimpleDate : this);
  }

  DateFormat toDateFormatLocale(BuildContext context) {
    return DateFormat(isNullOrEmpty ? TimeService().formatSimpleDate : this, Localizations.localeOf(context).languageCode);
  }
}
