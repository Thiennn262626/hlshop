import 'package:hlshop/all_file/all_file.dart';

PriceUnit? priceUnitFromAny(Object? source) {
  return source?.toPriceUnit;
}

Object? priceUnitToJson(PriceUnit? source) {
  return source?.value;
}

@immutable
class PriceUnit with EquatableMixin {
  PriceUnit._(this.value);

  final num? value;

  PriceService get priceService => PriceService();

  static const PriceUnit zero = PriceUnit(value: 0);

  static const PriceUnit notFound = PriceUnit();

  const PriceUnit({
    this.value,
  });

  num? get inPriceNum => value;

  String get display =>
      priceService.strToFullFormattedPriceStr(value.toString()) ??
      priceService.notFoundPrice();

  String get toPrice => display;

  @override
  List<Object?> get props => [value];

  PriceUnit operator +(PriceUnit other) {
    if (value == null || other.value == null) {
      return PriceUnit.notFound;
    }
    return PriceUnit(
      value: value! + other.value!,
    );
  }

  PriceUnit timesQuantity(num quantity) {
    if (value == null) {
      return PriceUnit.notFound;
    }
    return PriceUnit(
      value: value! * quantity,
    );
  }

  PriceUnit operator *(PriceUnit other) {
    if (value == null || other.value == null) {
      return PriceUnit.notFound;
    }
    return PriceUnit(
      value: value! * other.value!,
    );
  }

  bool operator >(PriceUnit other) {
    if (value == null || other.value == null) {
      return false;
    }
    return value! > other.value!;
  }

  bool operator <(PriceUnit other) {
    if (value == null || other.value == null) {
      return false;
    }
    return value! < other.value!;
  }

  bool operator >=(PriceUnit other) {
    if (value == null || other.value == null) {
      return false;
    }
    return value! >= other.value!;
  }

  bool operator <=(PriceUnit other) {
    if (value == null || other.value == null) {
      return false;
    }
    return value! <= other.value!;
  }
}

extension PriceEntityConverterX on Object? {
  PriceUnit get toPriceUnit {
    if (this is num) {
      return PriceUnit(value: this as num?);
    }
    if (this is String) {
      try {
        return PriceUnit(value: num.parse((this as String?) ?? ''));
      } catch (e) {
        return PriceUnit.notFound;
      }
    }
    return PriceUnit.notFound;
  }
}
