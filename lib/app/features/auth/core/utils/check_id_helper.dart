import 'package:hlshop/all_file/all_file.dart';

part 'check_id_helper.g.dart';

class CheckIdHelper {
  CheckIdHelper._();

  // create a method get the id and check return if email or phone and countryCode
  static Future<CheckIdResultData> checkId(String id) async {
    final data = CheckIdResultData();
    if (isEmail(id)) {
      data.email = id;
    } else if (isPhone(id)) {
      final countryCode = await PhoneService().getPhoneCountryCode();
      data
        ..phone = id
        ..countryCode = countryCode;
    }
    return data;
  }

  static bool isEmail(String id) {
    return RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(id);
  }

  static bool isPhone(String id) {
    return RegExp(r'^(\+[1-9]\d{1,14}|[0-9]{8,15})$').hasMatch(id);
  }
}

@CopyWith()
class CheckIdResultData {
  CheckIdResultData({
    this.phone,
    this.countryCode,
    this.email,
  });

  bool get isPhone => phone?.isNotEmpty ?? false;

  bool get isEmail => email?.isNotEmpty ?? false;

  String getOTPMessage() {
    if (isPhone) {
      return 'Mã OTP đã được gửi đến SĐT {}'.tr(
        args: [
          phone ?? '',
        ],
      );
    }
    if (isEmail) {
      return 'Mã OTP đã được gửi đến Email {}'.tr(
        args: [
          email ?? '',
        ],
      );
    }
    return '';
  }

  String? phone;
  String? countryCode;
  String? email;
}
