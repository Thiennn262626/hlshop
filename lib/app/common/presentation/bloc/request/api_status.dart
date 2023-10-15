import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_status.freezed.dart';

@freezed
class ApiStatus with _$ApiStatus {
  const ApiStatus._();

  const factory ApiStatus.initial() = _Initial;
  const factory ApiStatus.loading() = _Loading;
  const factory ApiStatus.refreshing() = _Refreshing;
  const factory ApiStatus.done() = _Done;
  const factory ApiStatus.error(Object? error) = _Error;

  ApiStatus toPending() => maybeMap(
        initial: (_) => const ApiStatus.loading(),
        loading: (_) => const ApiStatus.loading(),
        orElse: () => const ApiStatus.refreshing(),
      );

  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isRefreshing => this is _Refreshing;
  bool get isDone => this is _Done;
  bool get isError => this is _Error;

  bool get isInitialOrPending => isInitial || isPending;
  bool get isPending => isLoading || isRefreshing;
  bool get isCompleted => isDone || isError;
}

extension CombinedApiStatusX on Iterable<ApiStatus> {
  ApiStatus get evaluated {
    final loading = firstWhereOrNull((apiStatus) => apiStatus.isLoading);
    if (loading != null) {
      return loading;
    }

    final refreshing = firstWhereOrNull((apiStatus) => apiStatus.isRefreshing);
    if (refreshing != null) {
      return refreshing;
    }

    final error = firstWhereOrNull((apiStatus) => apiStatus.isError);
    if (error != null) {
      return error;
    }

    final done = firstWhereOrNull((apiStatus) => apiStatus.isDone);
    if (done != null) {
      return done;
    }

    return firstOrNull ?? const ApiStatus.initial();
  }
}
