part of 'home_feature_gird_cubit.dart';

class HomeFeatureGirdState extends Equatable {
  const HomeFeatureGirdState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  HomeFeatureGirdState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return HomeFeatureGirdState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
