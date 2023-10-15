// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_id_helper.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CheckIdResultDataCWProxy {
  CheckIdResultData phone(String? phone);

  CheckIdResultData countryCode(String? countryCode);

  CheckIdResultData email(String? email);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CheckIdResultData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CheckIdResultData(...).copyWith(id: 12, name: "My name")
  /// ````
  CheckIdResultData call({
    String? phone,
    String? countryCode,
    String? email,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCheckIdResultData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCheckIdResultData.copyWith.fieldName(...)`
class _$CheckIdResultDataCWProxyImpl implements _$CheckIdResultDataCWProxy {
  const _$CheckIdResultDataCWProxyImpl(this._value);

  final CheckIdResultData _value;

  @override
  CheckIdResultData phone(String? phone) => this(phone: phone);

  @override
  CheckIdResultData countryCode(String? countryCode) =>
      this(countryCode: countryCode);

  @override
  CheckIdResultData email(String? email) => this(email: email);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CheckIdResultData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CheckIdResultData(...).copyWith(id: 12, name: "My name")
  /// ````
  CheckIdResultData call({
    Object? phone = const $CopyWithPlaceholder(),
    Object? countryCode = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
  }) {
    return CheckIdResultData(
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      countryCode: countryCode == const $CopyWithPlaceholder()
          ? _value.countryCode
          // ignore: cast_nullable_to_non_nullable
          : countryCode as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
    );
  }
}

extension $CheckIdResultDataCopyWith on CheckIdResultData {
  /// Returns a callable class that can be used as follows: `instanceOfCheckIdResultData.copyWith(...)` or like so:`instanceOfCheckIdResultData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CheckIdResultDataCWProxy get copyWith =>
      _$CheckIdResultDataCWProxyImpl(this);
}
