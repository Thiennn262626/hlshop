import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:intl/intl.dart';

extension PriceDataExtendNum on num? {
  String toThousandSeparator() {
    return '${PriceService().strToNumberFormat(toString())}';
  }

  String? get toShortPrice => PriceService().strToPriceStr(this?.toString());

  String? get toPriceTwoFraction =>
      PriceService().strToPriceStr(this?.toString(),
          numberFormat: PriceService().twoFractionPriceFormat);

  String? get billionToFullPrice =>
      this == null ? null : (this! * 1000000000).toString();

  String? get toPrice => PriceService().strToFullFormattedPriceStr(toString());
}

extension PriceDataExtendString on String? {
  String? toThousandSeparator() {
    return isNotNullOrEmpty
        ? '${PriceService().strToNumberFormat(this)}'
        : null;
  }

  String? removeThousandSeparator() {
    return isNotNullOrEmpty ? '${PriceService().strToNumberParse(this)}' : null;
  }

  String? get toShortPrice => PriceService().strToPriceStr(this);

  String get toPriceWithZero => PriceService().strToPriceStr(this) ?? '0';

  String? get toPrice => PriceService().strToFullFormattedPriceStr(this);

  String? get toPriceTwoFraction => PriceService()
      .strToPriceStr(this, numberFormat: PriceService().twoFractionPriceFormat);
}

class PriceService {
  static final PriceService _singleton = PriceService._internal();

  factory PriceService() {
    return _singleton;
  }

  PriceService._internal();

  late final NumberFormat priceFormat;
  late final NumberFormat twoFractionPriceFormat;
  late final NumberFormat fullWithUnitFormatted;
  late final NumberFormat numberFormat;

  void init({
    NumberFormat? priceFormat,
    NumberFormat? twoFractionPriceFormat,
    NumberFormat? fullWithUnitFormatted,
    NumberFormat? numberFormat,
  }) {
    this.priceFormat = priceFormat ?? NumberFormat('###.#########', 'vi_VN');
    this.twoFractionPriceFormat =
        twoFractionPriceFormat ?? NumberFormat('###.##', 'vi_VN');
    this.fullWithUnitFormatted = fullWithUnitFormatted ??
        NumberFormat.currency(
          locale: 'vi_VN',
          symbol: 'đ',
          decimalDigits: 0,
        );
    this.numberFormat = numberFormat ?? NumberFormat.decimalPattern('vi_VN');
  }

  String notFoundPrice() {
    return 'N/A';
  }

  String? strToNumberFormat(String? str) {
    if (str.isNullOrEmpty) return null;
    try {
      var parse = num.tryParse(str ?? '');
      if (parse == null) {
        return null;
      }
      return numberFormat.format(parse);
    } catch (e) {
      log('strToNumberFormat: $e', error: e);
    }
    return null;
  }

  num? strToNumberParse(String? str) {
    if (str.isNullOrEmpty) return null;
    try {
      return numberFormat.parse(str ?? '0');
    } catch (e) {
      log('strToNumberParse: $e', error: e);
    }
    return null;
  }

  String? strToFullFormattedPriceStr(String? priceStr) {
    if (priceStr.isNullOrEmpty) return null;
    try {
      return fullWithUnitFormatted.format(num.tryParse(priceStr ?? ''));
    } catch (e) {
      log('strToFullFormattedPriceStr: $e', error: e);
    }
    return null;
  }

  String? strToPriceStr(String? priceStr, {NumberFormat? numberFormat}) {
    if (priceStr.isNullOrEmpty) return null;

    try {
      final format = numberFormat ?? priceFormat;

      final n = num.parse(priceStr!);
      if (n < 1e3) {
        return format.format(n);
      }
      if (n >= 1e3 && n < 1e6) {
        return '${format.format((n / 1e3))} ${'THOUSAND_LEVEL'}';
      }
      if (n >= 1e6 && n < 1e9) {
        return '${format.format((n / 1e6))} ${'MILLION_LEVEL'}';
      }
      if (n >= 1e9) {
        return '${format.format((n / 1e9))} ${'BILLION_LEVEL'}';
      }
      return format.format(n);
    } catch (e) {
      log('strToPriceStr: $e', error: e);
    }
    return null;
  }
}
