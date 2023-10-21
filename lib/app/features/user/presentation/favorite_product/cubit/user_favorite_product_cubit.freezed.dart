// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorite_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFavoriteProductState {
  ApiStatus get status => throw _privateConstructorUsedError;
  Object? get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFavoriteProductStateCopyWith<UserFavoriteProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteProductStateCopyWith<$Res> {
  factory $UserFavoriteProductStateCopyWith(UserFavoriteProductState value,
          $Res Function(UserFavoriteProductState) then) =
      _$UserFavoriteProductStateCopyWithImpl<$Res, UserFavoriteProductState>;
  @useResult
  $Res call({ApiStatus status, Object? item});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserFavoriteProductStateCopyWithImpl<$Res,
        $Val extends UserFavoriteProductState>
    implements $UserFavoriteProductStateCopyWith<$Res> {
  _$UserFavoriteProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      item: freezed == item ? _value.item : item,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailStateImplCopyWith<$Res>
    implements $UserFavoriteProductStateCopyWith<$Res> {
  factory _$$ProductDetailStateImplCopyWith(_$ProductDetailStateImpl value,
          $Res Function(_$ProductDetailStateImpl) then) =
      __$$ProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, Object? item});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ProductDetailStateImplCopyWithImpl<$Res>
    extends _$UserFavoriteProductStateCopyWithImpl<$Res,
        _$ProductDetailStateImpl>
    implements _$$ProductDetailStateImplCopyWith<$Res> {
  __$$ProductDetailStateImplCopyWithImpl(_$ProductDetailStateImpl _value,
      $Res Function(_$ProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? item = freezed,
  }) {
    return _then(_$ProductDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      item: freezed == item ? _value.item : item,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl extends _ProductDetailState
    with DiagnosticableTreeMixin {
  const _$ProductDetailStateImpl(
      {this.status = const ApiStatus.initial(), this.item = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final Object? item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFavoriteProductState(status: $status, item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFavoriteProductState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState extends UserFavoriteProductState {
  const factory _ProductDetailState(
      {final ApiStatus status, final Object? item}) = _$ProductDetailStateImpl;
  const _ProductDetailState._() : super._();

  @override
  ApiStatus get status;
  @override
  Object? get item;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
