import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:hlshop/services/user_secure_storage_service.dart';
import 'package:network_logger/network_logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule();

  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }

    log('**** Dio create');
    final options = BaseOptions(
      baseUrl: 'https://hl-shop.azurewebsites.net/',
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
      sendTimeout: const Duration(seconds: 12),
    );

    _dio = Dio(options);

    if (AppConfig.SHOW_LOG) {
      _dio!.interceptors.add(
        PrettyDioLogger(
          request: true,
          responseBody: true,
        ),
      );
      dio.interceptors.add(DioNetworkLogger());
    }

    // Check token
    final storage = getIt<UserSecureStorage>();
    if (storage.user != null) {
      addToken(storage.userToken);
    }

    addTokenInterceptor();

    return _dio!;
  }

  void addTokenInterceptor() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            log('interceptor 401');

            getIt<AuthBloc>().add(const AuthEvent.signOut());
          }

          return handler.next(error);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
      ),
    );
  }

  void addToken(String? token) {
    if (token == null) return;
    log('DioModule.addToken => $token');

    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.options.headers['token'] = token;
  }

  void removeToken() {
    log('DioModule.removeToken =>');
    dio.options.headers['Authorization'] = null;
    dio.options.headers['token'] = null;
  }

  String? getToken() {
    return dio.options.headers['Authorization'].toString();
  }

  @override
  void onClose() {
    log('**** Dio clear');
    //dio.clear();
  }
}

bool? boolFormAny(dynamic source) {
  if (source == null) {
    return null;
  }
  if (source is bool) {
    return source;
  } else if (source is String) {
    return source == '1';
  } else if (source is int) {
    return source == 1;
  }
  return false;
}
