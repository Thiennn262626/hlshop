import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/app/dismiss_keyboard.dart';
import 'package:app_ui_kit/components/app/scroll_behavior_default.dart';
import 'package:flutter/services.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/exception/app_exception_handler.dart';
import 'package:hlshop/app/common/presentation/widgets/responsive/app_responsive_config.dart';
import 'package:hlshop/app/features/auth/self.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/bloc/shopping_cart_bloc.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  AppAutoRoute get appRouter => getIt<AppAutoRoute>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Theme.of(context).canvasColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'HLSHOP',
        builder: (context, child) {
          return AppResponsiveConfig(
            child: _flavorBanner(
              child: _AppWidget(
                appRouter: appRouter,
                child: child ?? const SizedBox.shrink(),
              ),
            ),
          );
        },
        themeMode: ThemeMode.light,
        theme: AppTheme.getTheme(
          fontFamily: 'Inter',
        ),
        darkTheme: AppTheme.getTheme(
          isDark: true,
          fontFamily: 'Inter',
        ),
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(
          initialRoutes: [
            const MainRoute(),
          ],
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
  }) {
    return child;
  }
}

class _AppWidget extends StatelessWidget {
  const _AppWidget({
    super.key,
    required this.appRouter,
    required this.child,
  });

  final AppAutoRoute appRouter;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _AppConfiguration(
      child: BlocProviderGlobal(child: child),
    );
  }
}

class _AppConfiguration extends StatelessWidget {
  const _AppConfiguration({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ExceptionHandlerConfig(
        handler: AppExceptionHandler(context: context),
        child: AppConfiguration(
          configData: AppConfigData(
            translate: (key) => key.tr(),
          ),
          child: PagingConfiguration(
            configData: PagingConfigData(
              errorBuilder: (context, error) => PageErrorNotify(
                error:
                    kDebugMode ? error : 'Có lỗi xảy ra, vui lòng thử lại'.tr(),
              ),
              emptyBuilder: (context) => PageEmptyNotify(
                message: 'Không có dữ liệu'.tr(),
              ),
            ),
            child: DialogConfiguration(
              configData: DialogConfigData(
                confirmLabel: LocaleKeys.common_dialog_Confirm.tr(),
                cancelLabel: LocaleKeys.common_dialog_Cancel.tr(),
                deleteLabel: LocaleKeys.common_dialog_Delete.tr(),
              ),
              child: ScrollConfiguration(
                behavior: const ScrollBehaviorDefault(),
                child: LoaderOverlay(
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlocProviderGlobal extends StatelessWidget {
  const BlocProviderGlobal({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt()..add(const AuthEvent.appStarted()),
        ),
        BlocProvider<UserBloc>(
          create: (context) => getIt()..add(const UserEvent.initial()),
        ),
        BlocProvider<ShoppingCartBloc>(
          create: (context) => ShoppingCartBloc(),
        ),
      ],
      child: child,
    );
  }
}
