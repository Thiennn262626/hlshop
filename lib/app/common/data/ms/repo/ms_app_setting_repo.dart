import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/data/ms/api/ms_app_setting_api.dart';

class MsAppSettingRepo {
  MsAppSettingRepo({MsAppSettingApi? api}) {
    _api = api ?? getIt<MsAppSettingApi>();
  }

  late final MsAppSettingApi _api;

  MsAppSetting? _appSetting;

  Future<MsAppSetting?> getAppSetting({
    bool forceFetch = false,
  }) async {
    if (forceFetch || _appSetting == null) {
      _appSetting = await _api.getAppSetting();
    }
    return _appSetting;
  }
}
