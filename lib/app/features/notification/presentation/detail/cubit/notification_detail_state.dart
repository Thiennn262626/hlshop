part of 'notification_detail_cubit.dart';

class NotificationDetailState extends Equatable {
  const NotificationDetailState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final NotificationDetailModel item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  NotificationDetailState copyWith({
    ItemStatus? status,
    NotificationDetailModel? item,
    Object? error,
  }) {
    return NotificationDetailState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
