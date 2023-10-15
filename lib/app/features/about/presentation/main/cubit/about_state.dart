part of 'about_cubit.dart';

class AboutState extends RequestState {
  const AboutState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  AboutState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return AboutState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
