import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserSecureStorage {
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) {
      return;
    }
    _box = await Hive.openBox(
      'secureStorage HIVE_VER_1',
    );
    _isInitialized = true;
  }

  void dispose() {
    _unAuthorizedController.close();
  }

  late Box _box;

  UserEntity? userData;
  final StreamController<bool> _unAuthorizedController =
      StreamController<bool>.broadcast();

  Stream<bool> get unAuthorizedStream => _unAuthorizedController.stream;

  String? _token;
  String? _socialAvatar;
  bool? _unAuthorizedState;
  bool? _developerMode;
  final tokenKey = 'tokenKey';
  final socialAvatarKey = 'socialAvatarKey';
  final unAuthorizeKey = 'unAuthorizeKey';

  String? get userId => user?.id;

  bool get isLogin => user != null;

  Future<void> clear() async {
    _token = null;
    _socialAvatar = null;
    userData = null;
    _unAuthorizedState = null;
    await _box.put(tokenKey, null);
    await _box.put(socialAvatarKey, null);
    await _box.put(unAuthorizeKey, null);
  }

  Future<void> notifyUnAuthorized() async {
    _unAuthorizedState = _box.get(unAuthorizeKey, defaultValue: null) as bool?;
    if (_unAuthorizedState == true) {
      return;
    }

    _unAuthorizedController.add(true);
    await _box.put(unAuthorizeKey, true);
  }

  Future<void> notifyAuthorized() async {
    _unAuthorizedState = _box.get(unAuthorizeKey, defaultValue: null) as bool?;
    if (_unAuthorizedState == false) {
      return;
    }

    _unAuthorizedController.add(false);
    await _box.put(unAuthorizeKey, false);
  }

  Future<void> setUserModel(UserEntity user) async {
    log('setUserModel $user');
    userData = user;
  }

  UserEntity? get user {
    return userData;
  }

  String? get userToken {
    return token;
  }

  Future<void> setSocialAvatar(String? socialAvatar) async {
    _socialAvatar = socialAvatar;

    await _box.put(
      socialAvatarKey,
      _socialAvatar,
    );
  }

  String? get socialAvatar {
    if (_socialAvatar != null) {
      return _socialAvatar;
    }
    _socialAvatar = _box.get(socialAvatarKey, defaultValue: null) as String?;
    return _socialAvatar;
  }

  Future<void> setToken(String token) async {
    _token = token;

    await _box.put(
      tokenKey,
      token,
    );
  }

  String? get token {
    if (_token != null) {
      return _token;
    }
    _token = _box.get(tokenKey, defaultValue: null) as String?;
    return _token;
  }

  Future<void> setDeveloperMode(bool enable) async {
    _developerMode = enable;
  }

  bool? get developerMode {
    return _developerMode;
  }
}
