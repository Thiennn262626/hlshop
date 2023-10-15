import 'package:flutter/services.dart';
import 'package:hlshop/all_file/all_file.dart';

class AppExceptionHandler extends ExceptionHandler {
  AppExceptionHandler({required super.context});

  static String? getServerErrorCode(Object object) {
    if (object is DioError && object.response?.data is Map) {
      final errorCode = castOrNull<String>(object.response?.data?['errorCode']);
      return errorCode;
    }
    return null;
  }

  static String? getServerErrorVar(Object error, String key) {
    final object = error;
    if (object is DioError) {
      final data = object.response?.data;
      if (data is Map) {
        return data[key] as String?;
      }
    }
    return null;
  }

  @override
  String getErrorMessage(Object? error) {
    return error.getAppErrorMsg();
  }
}

extension _DioErrorExtend on Object? {
  T? getErrorCodeDataValue<T>(String key) {
    if (this is DioError) {
      return castOrNull<T>((this as DioError).response?.data?[key]);
    }
    return null;
  }

  String getAppErrorMsg() {
    final object = this;
    if (object is DioError) {
      final dioError = object;
      if (dioError.response?.statusCode == 401) {
        return 'Vui lòng đăng nhập'.tr();
      }
      if (dioError.error.toString().contains('Failed host lookup')) {
        return 'Kết nối lại'.tr();
      }
      if (dioError.response?.data is Map) {
        final errorCode =
            (dioError.response?.data as Map)['errorCode'] as String?;
        if (errorCode != null) {
          return errorCode.tr();
        }
      }
    }
    if (kDebugMode) {
      if (object is PlatformException) {
        return '${object.message} \n\n\n---\n\n\n ${object.stacktrace} \n\n\n---\n\n\n $object';
      }
      return '$object';
    }
    return 'Có lỗi xảy ra. Vui lòng thử lại'.tr();
  }
}
