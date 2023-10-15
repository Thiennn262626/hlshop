import 'dart:developer' show log;

import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter_sim_country_code/flutter_sim_country_code.dart';

class PhoneService {
  static final PhoneService _instance = PhoneService._internal();

  factory PhoneService() {
    return _instance;
  }

  PhoneService._internal();

  Future<String?> getPhoneCountryCode() async {
    String? simCountryCode = null;
    if (kDebugMode == true) {
      simCountryCode = 'VN';
    }
    // if (simCountryCode?.isEmpty ?? true) {
    //   simCountryCode = await getWithCarrierInfo(simCountryCode);
    // }
    if (simCountryCode?.isEmpty ?? true) {
      simCountryCode = await getWithFlutterSimCode(simCountryCode);
    }
    if (simCountryCode?.isEmpty ?? true) {
      simCountryCode = getWithWidgetBinding(simCountryCode);
    }

    final phoneCode = Country.tryParse(simCountryCode ?? 'VN')?.phoneCode;

    return Future.value(phoneCode);
  }

  String? getWithWidgetBinding(String? simCountryCode) {
    try {
      // Get by SIM network
      simCountryCode = (simCountryCode?.isNotEmpty ?? false) ? simCountryCode : WidgetsBinding.instance.window.locale.countryCode;
    } catch (e) {
      log(e.toString());
    }
    return simCountryCode?.replaceFirst('--', '');
  }

  // Future<String?> getWithCarrierInfo(String? simCountryCode) async {
  //   try {
  //     if (Platform.isIOS) {
  //       IosCarrierData? carrierInfo = await CarrierInfo.getIosInfo();
  //       simCountryCode = (simCountryCode?.isNotEmpty ?? false)
  //           ? simCountryCode
  //           : carrierInfo.carrierData
  //               .firstWhere(
  //                 (element) => element.isoCountryCode.isNotEmpty,
  //               )
  //               .isoCountryCode;
  //     } else if (Platform.isAndroid) {
  //       AndroidCarrierData? carrierInfo = await CarrierInfo.getAndroidInfo();
  //       simCountryCode = (simCountryCode?.isNotEmpty ?? false)
  //           ? simCountryCode
  //           : carrierInfo?.telephonyInfo
  //               .firstWhere(
  //                 (element) => element.isoCountryCode.isNotEmpty,
  //               )
  //               .isoCountryCode;
  //       simCountryCode = (simCountryCode?.isNotEmpty ?? false)
  //           ? simCountryCode
  //           : carrierInfo?.subscriptionsInfo
  //               .firstWhere(
  //                 (element) => element.countryIso.isNotEmpty,
  //               )
  //               .countryIso;
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //   }
  //   return simCountryCode?.replaceFirst('--', '');
  // }

  Future<String?> getWithFlutterSimCode(String? simCountryCode) async {
    try {
      // Get by SIM network
      simCountryCode = (simCountryCode?.isNotEmpty ?? false) ? simCountryCode : await FlutterSimCountryCode.simCountryCode;
    } catch (e) {
      log(e.toString());
    }
    return simCountryCode?.replaceFirst('--', '');
  }
}
