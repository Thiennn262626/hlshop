part of '{{feature_name.snakeCase()}}_cubit.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State._();

  const factory {{feature_name.pascalCase()}}State({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) Object? item,
  }) = _ProductDetailState;
}