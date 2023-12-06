// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSearchState {
  ApiStatus get status => throw _privateConstructorUsedError;
  ProductFilterData? get filterData => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchStateCopyWith<ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res, ProductSearchState>;
  @useResult
  $Res call(
      {ApiStatus status,
      ProductFilterData? filterData,
      List<ProductEntity> products});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res, $Val extends ProductSearchState>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filterData = freezed,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      filterData: freezed == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as ProductFilterData?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
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
abstract class _$$ProductSearchStateImplCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory _$$ProductSearchStateImplCopyWith(_$ProductSearchStateImpl value,
          $Res Function(_$ProductSearchStateImpl) then) =
      __$$ProductSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus status,
      ProductFilterData? filterData,
      List<ProductEntity> products});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ProductSearchStateImplCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$ProductSearchStateImpl>
    implements _$$ProductSearchStateImplCopyWith<$Res> {
  __$$ProductSearchStateImplCopyWithImpl(_$ProductSearchStateImpl _value,
      $Res Function(_$ProductSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filterData = freezed,
    Object? products = null,
  }) {
    return _then(_$ProductSearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      filterData: freezed == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as ProductFilterData?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$ProductSearchStateImpl extends _ProductSearchState
    with DiagnosticableTreeMixin {
  const _$ProductSearchStateImpl(
      {this.status = const ApiStatus.initial(),
      this.filterData = null,
      final List<ProductEntity> products = const []})
      : _products = products,
        super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final ProductFilterData? filterData;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductSearchState(status: $status, filterData: $filterData, products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductSearchState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('filterData', filterData))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filterData, filterData) ||
                other.filterData == filterData) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, filterData,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      __$$ProductSearchStateImplCopyWithImpl<_$ProductSearchStateImpl>(
          this, _$identity);
}

abstract class _ProductSearchState extends ProductSearchState {
  const factory _ProductSearchState(
      {final ApiStatus status,
      final ProductFilterData? filterData,
      final List<ProductEntity> products}) = _$ProductSearchStateImpl;
  const _ProductSearchState._() : super._();

  @override
  ApiStatus get status;
  @override
  ProductFilterData? get filterData;
  @override
  List<ProductEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductSearchStateImplCopyWith<_$ProductSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
