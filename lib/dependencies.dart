import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/self.dart';
import 'package:hlshop/app/features/auth/self.dart';
import 'package:hlshop/app/features/checkout/self.dart';
import 'package:hlshop/app/features/message/self.dart';
import 'package:hlshop/app/features/product/self.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';
import 'package:hlshop/app/features/user/data/repo/ms_payment_repo.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/app/features/user_order/data/mulstore/api/order_api_ms.dart';
import 'package:hlshop/app/features/user_order/data/repo/user_oder_repo_ms.dart';
import 'package:hlshop/app/features/user_order/domain/repo/user_order_repo.dart';
import 'package:hlshop/firebase_options.dart';
import 'package:hlshop/services/app_config/app_config_service.dart';
import 'package:hlshop/services/user_secure_storage_service.dart';

final getIt = GetIt.instance;

Future<void> setupAppDependencies() async {
  log('SERVICE starting ...');

  await _appService();
  await _appDataProvider();

  // Navigation
  getIt.registerSingleton<AppAutoRoute>(AppAutoRoute());

  log('SERVICE all started...');
}

Future<void> _appService() async {
  await Hive.initFlutter();

  // Firebase

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FlutterError.onError = Crashlytics.instance.recordFlutterError;
  // Call crash test
  // FirebaseCrashlytics.instance.crash();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  } else {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    await FirebaseCrashlytics.instance.sendUnsentReports();
  }
}

Future<void> _appDataProvider() async {
  getIt.registerSingleton<DioModule>(DioModule());

  // Init Price Service
  PriceService().init();
  FontSizeService().init(
    baseFontSize: 14,
  );

  // Init User Secure Storage And Device Service
  final userSecureStorage = UserSecureStorage();
  await userSecureStorage.init();
  getIt
    ..registerSingleton<UserSecureStorage>(userSecureStorage)
    ..registerSingleton<AppConfigService>(AppConfigService());

  _initDataMSService();

  getIt
    ..registerSingleton(AuthBloc())
    ..registerSingleton(UserBloc());
}

void _initDataMSService() {
  final dio = getIt<DioModule>().dio;

  getIt
    // API
    ..registerLazySingleton<UserApiMS>(() => UserApiMS(dio))
    ..registerLazySingleton<AddressApiMS>(() => AddressApiMS(dio))
    ..registerLazySingleton<AuthApiMS>(() => AuthApiMS(dio))
    ..registerLazySingleton<MsProductApi>(() => MsProductApi(dio))
    ..registerLazySingleton<MsProductCategoryApi>(
        () => MsProductCategoryApi(dio))
    ..registerLazySingleton<MsAppSettingApi>(() => MsAppSettingApi(dio))
    ..registerLazySingleton<MsShoppingCartApi>(() => MsShoppingCartApi(dio))
    ..registerLazySingleton<MsOrderApi>(() => MsOrderApi(dio))
    ..registerLazySingleton<MsCheckoutApi>(() => MsCheckoutApi(dio))
    // Repo
    ..registerLazySingleton<MsAppSettingRepo>(
      () => MsAppSettingRepo()..getAppSetting(),
    )
    ..registerLazySingleton<ShoppingCartRepo>(MsShoppingCartRepo.new)
    ..registerLazySingleton<UserRepo>(UserRepoMS.new)
    ..registerLazySingleton<AddressRepo>(
      AddressRepoMs.new,
    )
    ..registerLazySingleton<CheckoutRepo>(MsCheckoutRepo.new)
    ..registerLazySingleton<PaymentRepo>(MsPaymentRepo.new)
    ..registerLazySingleton<AuthRepo>(AuthRepoMS.new)
    ..registerLazySingleton<ProductRepo>(MsProductRepo.new)
    ..registerLazySingleton<ProductCategoryRepo>(MsProductCategoryRepo.new)
    ..registerLazySingleton<MessageRepo>(MessageRepoImpl.new)
    ..registerLazySingleton<UserOrderRepo>(MsUserOrderRepo.new)
    ..registerLazySingleton<AppNavigationEventRepo>(AppNavigationEventRepo.new);
}
