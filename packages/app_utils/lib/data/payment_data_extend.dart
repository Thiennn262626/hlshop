// ignore_for_file: unnecessary_this
import 'package:dartx/dartx.dart';

extension PaymentDataStringNullable on String? {
  String? subAndChangeFirstNumberAccount() {
    if (this.isNullOrEmpty) return null;
    var result = this!.substring(this!.length - 4);
    return '*$result';
  }

  String? hideNumberAccount() {
    if (this.isNullOrEmpty) return null;
    var result = '';
    for (int i = 0; i < this!.length - 4; i++) {
      result += '*';
    }
    result = result + this!.substring(this!.length - 4);
    return result;
  }
}
