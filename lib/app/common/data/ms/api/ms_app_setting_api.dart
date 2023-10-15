import 'package:hlshop/all_file/all_file.dart';

part 'ms_app_setting_api.g.dart';

@RestApi()
abstract class MsAppSettingApi {
  factory MsAppSettingApi(Dio dio) = _MsAppSettingApi;

  @GET('/api/mulstore/setting/list')
  Future<MsAppSetting> getAppSetting();
}
