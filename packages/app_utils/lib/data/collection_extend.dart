// ignore_for_file: prefer_is_empty

import 'package:app_utils/all_file/app_utils_all_file.dart';

extension MapExtend<K, V> on Map<K, V>? {
  bool isNullOrEmpty() {
    if (this == null || this?.length == 0) return true;
    return false;
  }

  bool isNotNullOrEmpty() {
    return !isNullOrEmpty();
  }

  List<T>? mapAsList<T>(T Function(K key, V value) mapFunc) {
    if (isNullOrEmpty()) {
      return [];
    }

    return this
        ?.entries
        .map<T>((entry) => mapFunc(entry.key, entry.value))
        .toList();
  }

  Map<K, V> removeWhereClone(bool Function(K key, V value) condition) {
    var temp = <K, V>{}..addAll(this ?? {});
    temp.removeWhere(condition);
    return temp;
  }

  Map<K, V> pushItemClone(K key, V value) {
    var temp = <K, V>{}..addAll(this ?? {});
    temp[key] = value;
    return temp;
  }

  Map<K, V> sortClone(
      int Function(MapEntry<K, V> a, MapEntry<K, V> b) compare) {
    return Map.fromEntries(this!.entries.toList()..sort(compare));
  }

  Map<K, V> filter(bool Function(K key, V value) removeWhere) {
    return Map.from(this ?? {})
      ..removeWhere(
        (key, value) => !removeWhere(key, value),
      );
  }
}

extension ListExtend<T> on List<T>? {
  int indexWhereOr(
    bool Function(T element) condition, {
    int defaultValue = -1,
  }) {
    if (this == null) return defaultValue;

    var indexWhere = this!.indexWhere(condition);
    if (indexWhere == -1) {
      return defaultValue;
    }
    return indexWhere;
  }

  T? getOrNull(int index) {
    if (this == null || index < 0) return null;
    if (index < this!.length) return this![index];
    return null;
  }

  Iterable<T> withoutLast() {
    if (isNullOrEmpty) return [];

    return this!.sublist(0, this!.length - 1);
  }
}

extension IterableBasics<E> on Iterable<E>? {
  E? getOrNull(int index) {
    if (this == null || index < 0) return null;
    if (index < this!.length) return this!.toList()[index];
    return null;
  }

  // ignore: use_function_type_syntax_for_parameters
  List<T> mapAsList<T>(T f(E item)) => this?.map(f).toList() ?? [];

  List<dynamic> expandAsList<T>(Iterable<T> Function(E element) toElements) =>
      this?.expand(toElements).toList() ?? [];

  Map<K, E> toMap<K>(K Function(E item) getKey) {
    var map = <K, E>{};
    this?.forEach((item) {
      map[getKey(item)] = item;
    });
    return map;
  }

  bool get isNullOrEmpty {
    if (this == null || this?.length == 0) return true;
    return false;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }

  Iterable<E> filter(bool Function(E item) conditionMethod) {
    return this?.where(conditionMethod) ?? [];
  }

  List<T> filterNotNullList<T>() {
    return this
            ?.where(
              (element) => element != null,
            )
            .cast<T>()
            .toList() ??
        [];
  }

  E? find(bool Function(E item) conditionMethod) {
    return filterAsList(conditionMethod).firstOrNull;
  }

  List<E> filterAsList(bool Function(E item) conditionMethod) {
    return filter(conditionMethod).toList();
  }

  String? joinWithoutNull([String separator = ""]) {
    final list = filterAsList((item) => item != null);
    if (list.isEmpty) return null;
    return list.join(separator);
  }

  String? joinWithoutNullEmpty([String separator = ""]) {
    final list = filterAsList((item) => item.isNotNullOrEmpty);
    if (list.isEmpty) return null;
    return list.join(separator);
  }

  List<E> filterAsListIndex(bool Function(E item, int index) conditionMethod) {
    var i = 0;
    if (isNullOrEmpty) {
      return [];
    }
    return filter((e) => conditionMethod(e, i++)).toList();
  }

  List<U> mapAsListIndexed<U>(
    U Function(E currentValue, int index) transformer,
  ) {
    return mapIndexed(transformer)?.toList() ?? [];
  }

  List<E> searchList(String? searchText, String? Function(E item) mapping) {
    return filterAsList((item) {
      return mapping(item)?.searchEqual(searchText) ?? false;
    });
  }

  // use "Nill" to avoid conflict name
  E? get firstOrNull {
    if (this?.length == 0) return null;
    return firstOrElse(() => null as E);
  }

  E? lastOrNull() {
    if (this?.length == 0) return null;
    return lastOrElse(() => null as E);
  }

  E? firstOrElse(E Function() orElse) {
    if (this?.length == 0) return null;
    return this?.firstWhere((_) => true, orElse: orElse);
  }

  E? lastOrElse(E Function() orElse) {
    if (this?.length == 0) return null;
    return this?.lastWhere((_) => true, orElse: orElse);
  }

  Iterable<T>? mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    if (isNullOrEmpty) {
      return null;
    }
    return this!.map((e) => f(e, i++));
  }

  void forEachIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    if (isNullOrEmpty) {
      return;
    }
    return this!.forEach((e) => f(e, i++));
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = Set();
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
