import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/services/app_config/app_config_model.dart';

class AppConfigService {
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) {
      return;
    }
    _box = await Hive.openBox(
      'appStorage',
    );
    _isInitialized = true;

    appConfig.openCount = appConfig.openCount + 1;
    save();
  }

  late Box _box;
  final appConfigKey = 'appConfig';
  AppConfigModel? _appConfig;

  Future<void> clear() async {
    await _box.put(appConfigKey, null);
  }

  Future<void> save() async {
    await _box.put(
      appConfigKey,
      _appConfig?.toJson(),
    );
  }

  Future<void> setAppConfigModel(AppConfigModel data) async {
    _appConfig = data;
    await _box.put(
      appConfigKey,
      data?.toJson(),
    );
  }

  AppConfigModel get appConfig {
    if (_appConfig != null) {
      return _appConfig!;
    }
    _appConfig = AppConfigModel.fromJson(
      _box.get(appConfigKey, defaultValue: AppConfigModel().toJson())
          as Map<String, dynamic>,
    );
    return _appConfig!;
  }

  bool isFirstRun() {
    return appConfig.openCount == 1;
  }
}
