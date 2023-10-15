part of 'message_cubit.dart';

class MessageState extends RequestState {
  const MessageState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  MessageState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return MessageState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
