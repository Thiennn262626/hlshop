import 'package:hlshop/all_file/all_file.dart';

class AuthException implements Exception {
  AuthException({
    this.error,
  });

  final Object? error;
}

class AuthAccountExistException extends AuthException {
  AuthAccountExistException({
    required this.userID,
    this.userName,
    super.error,
  });

  final String userID;
  final String? userName;
}
