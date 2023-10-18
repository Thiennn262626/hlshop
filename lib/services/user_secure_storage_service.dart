import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserSecureStorage {
  bool _isInitialized = false;

  Future<void> init() async {
    if (_isInitialized) {
      return;
    }
    _box = await Hive.openBox(
      'secureStorage 1}',
    );
    _isInitialized = true;
  }

  late Box _box;

  UserEntity? userData;

  String? _token;
  String? _socialAvatar;
  bool? _developerMode;
  final tokenKey = 'tokenKey';
  final socialAvatarKey = 'socialAvatarKey';

  String? get userId => user?.id;

  bool get isLogin => user != null;

  Future<void> clear() async {
    _token = null;
    _socialAvatar = null;
    userData = null;
    await _box.put(tokenKey, null);
    await _box.put(socialAvatarKey, null);
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
