import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeAgo;
import 'package:timeago/timeago.dart';

class TimeService {
  static final TimeService _singleton = TimeService._internal();

  factory TimeService() {
    if (_singleton.isInit == false) {
      _singleton.init();
    }
    return _singleton;
  }

  TimeService._internal();

  void init({
    Locale? locale,
    String? formatServer,
    String? formatSimpleDate,
    DateFormat? formatSimpleDateDF,
    String? formatSimpleHour,
    String? formatSimpleMonthDate,
    String? formatSimpleMonthYear,
    String? formatUserDayOfWeek,
    String? formatUserDateTime,
    String? formatUserDateTime1,
    String? formatUserDateTimeFull,
    String? formatUserSimpleMonthDay,
    String? userDayTimeFormat,
    LookupMessages? timeAgoMessages,
    LookupMessages? differMessages,
  }) {
    this.locale = locale ?? const Locale('vi', 'VN');
    this.formatServer = formatServer ?? 'yyyy-MM-ddTHH:mm:ssZ';
    this.formatSimpleDate = 'dd/MM/yyyy';
    this.formatSimpleDateDF = formatSimpleDateDF ?? DateFormat(formatSimpleDate);
    this.formatSimpleHour = formatSimpleHour ?? 'HH:mm';
    this.formatSimpleMonthDate = formatSimpleMonthDate ?? 'dd/MM';
    this.formatSimpleMonthYear = formatSimpleMonthYear ?? 'MM/yyyy';
    this.formatUserDayOfWeek = formatUserDayOfWeek ?? 'EEEE';
    this.formatUserDateTime = formatUserDateTime ?? 'hh:mm, dd/MM';
    this.formatUserDateTime1 = formatUserDateTime1 ?? 'hh:mm - dd/MM/yyyy';
    this.formatUserDateTimeFull = formatUserDateTimeFull ?? 'dd/MM/yyyy, HH:mm';
    this.formatUserSimpleMonthDay = formatUserSimpleMonthDay ?? 'MMMMd';
    this.userDayTimeFormat = userDayTimeFormat ?? 'dd/MM/yyyy HH:mm';
    this.timeAgoMessages = timeAgoMessages ?? DefaultVnTimeAgoMessages();
    this.differMessages = differMessages ?? DefaultVnDifferMessages();
    isInit = true;
  }

  bool isInit = false;
  late final Locale locale;
  late final String formatServer;
  late final String formatSimpleDate;
  late final DateFormat formatSimpleDateDF;
  late final String formatSimpleHour;
  late final String formatSimpleMonthDate;
  late final String formatSimpleMonthYear;
  late final String formatUserDayOfWeek;
  late final String formatUserDateTime;
  late final String formatUserDateTime1;
  late final String formatUserDateTimeFull;
  late final String formatUserSimpleMonthDay;
  late final String userDayTimeFormat;
  late final LookupMessages timeAgoMessages;
  late final LookupMessages differMessages;

  String? getTimeAgo(String? datetime) {
    return getTimeAgoFromDate(
      strUtcToDate(datetime),
    );
  }

  String? getTimeAgoFromDate(DateTime? date, {String? dateFormat}) {
    if (date == null) {
      return null;
    }

    final nowUtc = DateTime.now().toUtc();
    final diffInDay = nowUtc.difference(date).inDays;

    if (date.isAfter(nowUtc)) {
      return dateToStrLocale(date, format: dateFormat ?? formatSimpleDate);
    } else if (diffInDay >= 7) {
      return dateToStrLocale(date, format: dateFormat ?? formatSimpleDate);
    } else if (diffInDay == 1) {
      return 'yesterday';
    } else if (diffInDay > 1 && diffInDay < 7) {
      return dateToStrLocale(date, format: formatUserDayOfWeek);
    }

    final fifteenAgo = date;
    timeAgo.setLocaleMessages('vi', timeAgoMessages);
    return timeAgo.format(fifteenAgo, locale: locale.languageCode);
  }

  String? getTimeDifferStr(DateTime? firstDay, DateTime? secondDay) {
    try {
      if (firstDay == null || secondDay == null) {
        return null;
      }
      if (firstDay.isAfter(secondDay)) return null;

      timeAgo.setLocaleMessages('vi', differMessages);
      return timeAgo.format(secondDay, clock: firstDay, locale: locale.languageCode);
    } catch (e) {
      log(e.toString(), error: e);
      return null;
    }
  }

  DateTime getCurrentDate() {
    return DateTime.now();
  }

  DateTime? strUtcToDateLocale(String? str, {String? format}) {
    try {
      if (str.isNullOrEmpty) return null;
      return DateFormat(format ?? formatServer, locale.languageCode).parseUTC(str ?? '').toLocal();
    } catch (e) {
      log(e.toString(), error: e);
      return null;
    }
  }

  DateTime? strUtcToDate(String? str, {String? format}) {
    if (str.isNullOrEmpty) return null;
    return DateFormat(format ?? formatServer).parseUTC(str ?? '');
  }

  String getCurrentDateAsStrLocal({DateFormat? format}) {
    return dateToStr(getCurrentDate().toLocal(), format: format);
  }

  String dateToStr(DateTime rs, {DateFormat? format}) {
    return format != null ? format.format(rs) : formatSimpleDateDF.format(rs);
  }

  String dateToStrLocale(DateTime rs, {String? format}) {
    return dateToStr(
      rs.toLocal(),
      format: DateFormat(
        format,
        locale.languageCode,
      ),
    );
  }

  String? dateStrFormatLocale(String? rs, {String? format}) {
    try {
      if (rs == null) return null;
      var date = strUtcToDateLocale(rs)?.toLocal();

      if (date == null) return null;
      return dateToStr(date, format: DateFormat(format ?? formatServer, locale.languageCode));
    } catch (e) {
      log(e.toString(), error: e);
      return rs;
    }
  }

  String? dateStrFormat(String? rs, {DateFormat? format}) {
    if (rs == null) return null;
    var date = strUtcToDate(rs);

    if (date == null) return null;
    return dateToStr(date, format: format);
  }

  String? userFullDayFormatStr(String d) {
    final date = strUtcToDate(d);
    return date == null ? null : userFullDayFormat(date);
  }

  String? userFullDayFormat(DateTime? d) {
    if (d == null) return null;

    final now = DateTime.now().toUtc();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final checkDate = DateTime(d.year, d.month, d.day);
    final time = dateToStrLocale(d, format: formatSimpleHour);
    if (checkDate == today) {
      return '${'today'} $time';
    } else if (checkDate == yesterday) {
      return '${'yesterday'} $time';
    } else if (checkDate == tomorrow) {
      return '${'tomorrow'} $time';
    }

    return dateToStrLocale(d, format: userDayTimeFormat);
  }

  DateTime today() {
    return DateTime.now();
  }

  DateTime todayUTC() {
    return DateTime.now().toUtc();
  }

  DateTime todayLocal() {
    return DateTime.now().toLocal();
  }

  /// List of day between 1 day
  /// @range: Ex range = 3 => get 3 days on the left and 3 days on the right => total 7 days
  Future<List<DateTime>> daysBetween(DateTime date, int range) async {
    final first = date.subtract(Duration(days: range));
    final last = date.add(Duration(days: range + 1));

    return daysInRange(first, last).toList();
  }

  /// The list of days in a given month
  List<DateTime> daysInMonth(DateTime month) {
    final first = firstDayOfMonth(month);
    final daysBefore = first.weekday;
    final firstToDisplay = first.subtract(Duration(days: daysBefore));
    final last = lastDayOfMonth(month);

    var daysAfter = 7 - last.weekday;

    // If the last day is sunday (7) the entire week must be rendered
    if (daysAfter == 0) {
      daysAfter = 7;
    }

    final lastToDisplay = last.add(Duration(days: daysAfter));
    return daysInRange(firstToDisplay, lastToDisplay).toList();
  }

  bool isFirstDayOfMonth(DateTime day) {
    return isSameDay(firstDayOfMonth(day), day);
  }

  bool isLastDayOfMonth(DateTime day) {
    return isSameDay(lastDayOfMonth(day), day);
  }

  DateTime firstDayOfMonth(DateTime month) {
    return DateTime(month.year, month.month);
  }

  DateTime firstDayOfWeek(DateTime day) {
    /// Handle Daylight Savings by setting hour to 12:00 Noon
    /// rather than the default of Midnight
    day = DateTime.utc(day.year, day.month, day.day, 12);

    /// Weekday is on a 1-7 scale Monday - Sunday,
    /// This Calendar works from Sunday - Monday
    var decreaseNum = day.weekday % 7;
    return day.subtract(Duration(days: decreaseNum));
  }

  DateTime lastDayOfWeek(DateTime day) {
    /// Handle Daylight Savings by setting hour to 12:00 Noon
    /// rather than the default of Midnight
    day = DateTime.utc(day.year, day.month, day.day, 12);

    /// Weekday is on a 1-7 scale Monday - Sunday,
    /// This Calendar's Week starts on Sunday
    var increaseNum = day.weekday % 7;
    return day.add(Duration(days: 7 - increaseNum));
  }

  /// The last day of a given month
  DateTime lastDayOfMonth(DateTime month) {
    var beginningNextMonth = (month.month < 12) ? DateTime(month.year, month.month + 1, 1) : DateTime(month.year + 1, 1, 1);
    return beginningNextMonth.subtract(const Duration(days: 1));
  }

  /// Returns a [DateTime] for each day the given range.
  ///
  /// [start] inclusive
  /// [end] exclusive
  Iterable<DateTime> daysInRange(DateTime start, DateTime end) sync* {
    var i = start;
    var offset = start.timeZoneOffset;
    while (i.isBefore(end)) {
      yield i;
      i = i.add(const Duration(days: 1));
      var timeZoneDiff = i.timeZoneOffset - offset;
      if (timeZoneDiff.inSeconds != 0) {
        offset = i.timeZoneOffset;
        i = i.subtract(Duration(seconds: timeZoneDiff.inSeconds));
      }
    }
  }

  /// Whether or not two times are on the same day.
  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  bool isSameWeek(DateTime a, DateTime b) {
    /// Handle Daylight Savings by setting hour to 12:00 Noon
    /// rather than the default of Midnight
    a = DateTime.utc(a.year, a.month, a.day);
    b = DateTime.utc(b.year, b.month, b.day);

    var diff = a.toUtc().difference(b.toUtc()).inDays;
    if (diff.abs() >= 7) {
      return false;
    }

    var min = a.isBefore(b) ? a : b;
    var max = a.isBefore(b) ? b : a;
    var result = max.weekday % 7 - min.weekday % 7 >= 0;
    return result;
  }

  DateTime previousMonth(DateTime m) {
    var year = m.year;
    var month = m.month;
    if (month == 1) {
      year--;
      month = 12;
    } else {
      month--;
    }
    return DateTime(year, month);
  }

  DateTime nextMonth(DateTime m) {
    var year = m.year;
    var month = m.month;

    if (month == 12) {
      year++;
      month = 1;
    } else {
      month++;
    }
    return DateTime(year, month);
  }

  DateTime previousWeek(DateTime w) {
    return w.subtract(const Duration(days: 7));
  }

  DateTime nextWeek(DateTime w) {
    return w.add(const Duration(days: 7));
  }

  int? getTimeFormNow({Duration? duration}) {
    return DateTime.now().millisecondsSinceEpoch + (duration?.inMilliseconds ?? 0);
  }

  DateTime? changeTime(DateTime? date, int hour, int min, int sec) {
    if (date == null) return null;

    return DateTime(date.year, date.month, date.day, hour, min, sec);
  }
}

class DefaultVnTimeAgoMessages extends ViMessages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String aboutAMinute(int minutes) => '1 phút';

  @override
  String aboutAnHour(int minutes) => '1 giờ';

  @override
  String aDay(int hours) => '1 ngày';

  @override
  String hours(int hours) => '${hours.abs()} giờ';
}

class DefaultVnDifferMessages extends ViMessages {
  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  String lessThanOneMinute(int seconds) => '${seconds.abs()} giây';

  @override
  String aboutAMinute(int minutes) => '${minutes.abs()} phút';

  @override
  String minutes(int minutes) => '${minutes.abs()} phút';

  @override
  String aboutAnHour(int minutes) => '${minutes.abs()} phút';

  @override
  String hours(int hours) => '${hours.abs()} giờ';

  @override
  String aDay(int hours) => '${hours.abs()} giờ';

  @override
  String days(int days) => '${days.abs()} ngày';

  @override
  String aboutAMonth(int days) => '${days.abs()} ngày';

  @override
  String months(int months) => '${months.abs()} tháng';

  @override
  String aboutAYear(int year) => '${year.abs()} tháng';

  @override
  String years(int years) => '$years năm';

  @override
  String wordSeparator() => ' ';
}
