import 'package:hlshop/all_file/all_file.dart';

extension ExtendEnumName on Object? {
  String? enumTranslate() {
    if (this == null) return null;
    final enumVar = this;
    if (enumVar is Enum) {
      dynamic translateKey;
      try {
        translateKey = (this as dynamic).translateKey;
      } catch (e) {
        log('$e', error: e);
      }
      final enumStr =
          '${translateKey is String ? '$translateKey.' : ''}${enumVar.runtimeType}.${enumVar.name}';
      return enumStr.tr();
    }
    return toString();
  }
}
