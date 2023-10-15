part of 'paging_number_cubit.dart';

enum PagingNumberStatus { initial, loading, success, error }

class PagingNumberState extends Equatable {
  const PagingNumberState({
    this.status = PagingNumberStatus.initial,
    this.listData = const {},
    this.currentPage = 1,
    this.totalPage,
    this.error,
  });

  final PagingNumberStatus status;
  final Map<int, List<dynamic>> listData;
  final int currentPage;
  final int? totalPage;
  final dynamic? error;

  PagingNumberState update({
    PagingNumberStatus? status,
    Map<int, List<dynamic>>? listData,
    int? currentPage,
    int? totalPage,
    String? error,
  }) {
    return PagingNumberState(
      status: status ?? this.status,
      listData: listData ?? this.listData,
      currentPage: currentPage ?? this.currentPage,
      totalPage: totalPage,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, error, currentPage, totalPage, listData];

//<editor-fold desc="Data Methods">

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is PagingNumberState && runtimeType == other.runtimeType && status == other.status && listData == other.listData && currentPage == other.currentPage && totalPage == other.totalPage && error == other.error);

  @override
  int get hashCode => status.hashCode ^ listData.hashCode ^ currentPage.hashCode ^ totalPage.hashCode ^ error.hashCode;

  @override
  String toString() {
    return 'PagingNumberState{' + ' status: $status,' + ' listData: $listData,' + ' currentPage: $currentPage,' + ' totalPage: $totalPage,' + ' error: $error,' + '}';
  }

  PagingNumberState copyWith({
    PagingNumberStatus? status,
    Map<int, List<dynamic>>? listData,
    int? currentPage,
    int? totalPage,
    dynamic? error,
  }) {
    return PagingNumberState(
      status: status ?? this.status,
      listData: listData ?? this.listData,
      currentPage: currentPage ?? this.currentPage,
      totalPage: totalPage ?? this.totalPage,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': this.status,
      'listData': this.listData,
      'currentPage': this.currentPage,
      'totalPage': this.totalPage,
      'error': this.error,
    };
  }

  factory PagingNumberState.fromMap(Map<String, dynamic> map) {
    return PagingNumberState(
      status: map['status'] as PagingNumberStatus,
      listData: map['listData'] as Map<int, List<dynamic>>,
      currentPage: map['currentPage'] as int,
      totalPage: map['totalPage'] as int,
      error: map['error'] as String,
    );
  }

//</editor-fold>
}
