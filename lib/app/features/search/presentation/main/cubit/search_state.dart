part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  SearchState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return SearchState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
