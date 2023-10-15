// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i34;

import 'package:auto_route/auto_route.dart' as _i33;
import 'package:hlshop/all_file/all_file.dart' as _i35;
import 'package:hlshop/app/features/about/presentation/main/about_page.dart'
    as _i26;
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i4;
import 'package:hlshop/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i5;
import 'package:hlshop/app/features/auth/presentation/login/login_page.dart'
    as _i7;
import 'package:hlshop/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i3;
import 'package:hlshop/app/features/auth/presentation/sign_up/sign_up_page.dart'
    as _i6;
import 'package:hlshop/app/features/checkout/presentation/main/checkout_page.dart'
    as _i29;
import 'package:hlshop/app/features/home/presentation/main/home_page.dart'
    as _i1;
import 'package:hlshop/app/features/main/presentation/main_page.dart' as _i31;
import 'package:hlshop/app/features/message/presentation/main/message_page.dart'
    as _i13;
import 'package:hlshop/app/features/notification/data/model/notification_model.dart'
    as _i36;
import 'package:hlshop/app/features/notification/presentation/detail/notification_detail_page.dart'
    as _i8;
import 'package:hlshop/app/features/notification/presentation/main/notification_main_page.dart'
    as _i9;
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart'
    as _i40;
import 'package:hlshop/app/features/product/presentation/detail/product_detail_page.dart'
    as _i28;
import 'package:hlshop/app/features/product/presentation/product_search/product_search_page.dart'
    as _i27;
import 'package:hlshop/app/features/product_rating/presentation/main/product_rating_page.dart'
    as _i2;
import 'package:hlshop/app/features/search/presentation/main/search_page.dart'
    as _i30;
import 'package:hlshop/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i32;
import 'package:hlshop/app/features/shopping_cart/seft.dart' as _i41;
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart'
    as _i39;
import 'package:hlshop/app/features/user/presentation/account/user_account_page.dart'
    as _i25;
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart'
    as _i23;
import 'package:hlshop/app/features/user/presentation/address/receive_address/receive_address_page.dart'
    as _i24;
import 'package:hlshop/app/features/user/presentation/detail_account/detail_account_page.dart'
    as _i21;
import 'package:hlshop/app/features/user/presentation/detail_account/user_account%20_info/user_account%20_info_page.dart'
    as _i20;
import 'package:hlshop/app/features/user/presentation/detail_account/user_email_info/user_email_info_page.dart'
    as _i18;
import 'package:hlshop/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_page.dart'
    as _i19;
import 'package:hlshop/app/features/user/presentation/favorite_product/user_favorite_product_page.dart'
    as _i22;
import 'package:hlshop/app/features/user/presentation/info/user_info_page.dart'
    as _i17;
import 'package:hlshop/app/features/user/presentation/payment_method/crud_payment/bank_account/crud_bank_account_page.dart'
    as _i16;
import 'package:hlshop/app/features/user/presentation/payment_method/crud_payment/credit_card/credit_card_page.dart'
    as _i15;
import 'package:hlshop/app/features/user/presentation/payment_method/user_payment_info/user_payment_info_page.dart'
    as _i14;
import 'package:hlshop/app/features/user/self.dart' as _i38;
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart'
    as _i37;
import 'package:hlshop/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i11;
import 'package:hlshop/app/features/user_order/presentation/main/user_order_page.dart'
    as _i12;
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/user_order_tracking_detail_page.dart'
    as _i10;

abstract class $AppAutoRoute extends _i33.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ProductRatingRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProductRatingPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthOtpConfirmPage(
          confirmOTPFunc: args.confirmOTPFunc,
          onResendOTP: args.onResendOTP,
          otpLength: args.otpLength,
          otpMessage: args.otpMessage,
          key: args.key,
          successMessage: args.successMessage,
        ),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NotificationDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    NotificationMainRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationMainPage(),
      );
    },
    UserOrderTrackingDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderTrackingDetailRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.UserOrderTrackingDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderDetailRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.UserOrderDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UserOrderPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.MessagePage(),
      );
    },
    UserPaymentInfoRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.UserPaymentInfoPage(),
      );
    },
    CrudCreditCardRoute.name: (routeData) {
      final args = routeData.argsAs<CrudCreditCardRouteArgs>(
          orElse: () => const CrudCreditCardRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.CrudCreditCardPage(
          key: args.key,
          initialCreditCard: args.initialCreditCard,
          type: args.type,
        ),
      );
    },
    CrudBankAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CrudBankAccountRouteArgs>(
          orElse: () => const CrudBankAccountRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.CrudBankAccountPage(
          key: args.key,
          initialBankAccount: args.initialBankAccount,
          type: args.type,
        ),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.UserInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserEmailInfoRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.UserEmailInfoPage(),
      );
    },
    UserPhoneInfoRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.UserPhoneInfoPage(),
      );
    },
    UserAccountInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserAccountInfoRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.UserAccountInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    ReceiveDetailAccountRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveDetailAccountRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.ReceiveDetailAccountPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserFavoriteProductRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.UserFavoriteProductPage(),
      );
    },
    CrudAddressRoute.name: (routeData) {
      final args = routeData.argsAs<CrudAddressRouteArgs>(
          orElse: () => const CrudAddressRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.CrudAddressPage(
          key: args.key,
          initialAddress: args.initialAddress,
          type: args.type,
        ),
      );
    },
    ReceiveAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveAddressRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ReceiveAddressPage(
          key: args.key,
          user: args.user,
          canSelectPrimary: args.canSelectPrimary,
          defaultAddress: args.defaultAddress,
        ),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.UserAccountPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.AboutPage(),
      );
    },
    ProductSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ProductSearchRouteArgs>(
          orElse: () => const ProductSearchRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.ProductSearchPage(
          key: args.key,
          filterData: args.filterData,
          searchHint: args.searchHint,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i29.CheckoutPage(
          key: args.key,
          cartItems: args.cartItems,
          selectedCartItemIds: args.selectedCartItemIds,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.SearchPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.MainPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i33.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.ShoppingCartPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i33.PageRouteInfo<void> {
  const HomeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductRatingPage]
class ProductRatingRoute extends _i33.PageRouteInfo<void> {
  const ProductRatingRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProductRatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i33.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i34.Future<bool> Function(String) confirmOTPFunc,
    required _i34.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i35.Key? key,
    String? successMessage,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          AuthOtpConfirmRoute.name,
          args: AuthOtpConfirmRouteArgs(
            confirmOTPFunc: confirmOTPFunc,
            onResendOTP: onResendOTP,
            otpLength: otpLength,
            otpMessage: otpMessage,
            key: key,
            successMessage: successMessage,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthOtpConfirmRoute';

  static const _i33.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i33.PageInfo<AuthOtpConfirmRouteArgs>(name);
}

class AuthOtpConfirmRouteArgs {
  const AuthOtpConfirmRouteArgs({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    this.key,
    this.successMessage,
  });

  final _i34.Future<bool> Function(String) confirmOTPFunc;

  final _i34.Future<Object?> Function() onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i35.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i4.ChangePasswordPage]
class ChangePasswordRoute extends _i33.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i35.Key? key,
    required String userID,
    required String uuid,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            userID: userID,
            uuid: uuid,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i33.PageInfo<ChangePasswordRouteArgs> page =
      _i33.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i35.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i33.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i33.PageRouteInfo<void> {
  const SignUpRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i33.PageRouteInfo<void> {
  const LoginRoute({List<_i33.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationDetailPage]
class NotificationDetailRoute
    extends _i33.PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    _i35.Key? key,
    required _i36.NotificationDetailModel item,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const _i33.PageInfo<NotificationDetailRouteArgs> page =
      _i33.PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i35.Key? key;

  final _i36.NotificationDetailModel item;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i9.NotificationMainPage]
class NotificationMainRoute extends _i33.PageRouteInfo<void> {
  const NotificationMainRoute({List<_i33.PageRouteInfo>? children})
      : super(
          NotificationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationMainRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UserOrderTrackingDetailPage]
class UserOrderTrackingDetailRoute
    extends _i33.PageRouteInfo<UserOrderTrackingDetailRouteArgs> {
  UserOrderTrackingDetailRoute({
    _i35.Key? key,
    required _i37.OrderDataEntity? order,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          UserOrderTrackingDetailRoute.name,
          args: UserOrderTrackingDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderTrackingDetailRoute';

  static const _i33.PageInfo<UserOrderTrackingDetailRouteArgs> page =
      _i33.PageInfo<UserOrderTrackingDetailRouteArgs>(name);
}

class UserOrderTrackingDetailRouteArgs {
  const UserOrderTrackingDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i35.Key? key;

  final _i37.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderTrackingDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i11.UserOrderDetailPage]
class UserOrderDetailRoute
    extends _i33.PageRouteInfo<UserOrderDetailRouteArgs> {
  UserOrderDetailRoute({
    _i35.Key? key,
    required _i37.OrderDataEntity? order,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          UserOrderDetailRoute.name,
          args: UserOrderDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i33.PageInfo<UserOrderDetailRouteArgs> page =
      _i33.PageInfo<UserOrderDetailRouteArgs>(name);
}

class UserOrderDetailRouteArgs {
  const UserOrderDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i35.Key? key;

  final _i37.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i12.UserOrderPage]
class UserOrderRoute extends _i33.PageRouteInfo<void> {
  const UserOrderRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MessagePage]
class MessageRoute extends _i33.PageRouteInfo<void> {
  const MessageRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UserPaymentInfoPage]
class UserPaymentInfoRoute extends _i33.PageRouteInfo<void> {
  const UserPaymentInfoRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserPaymentInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserPaymentInfoRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i15.CrudCreditCardPage]
class CrudCreditCardRoute extends _i33.PageRouteInfo<CrudCreditCardRouteArgs> {
  CrudCreditCardRoute({
    _i35.Key? key,
    _i38.CreditCardEntity? initialCreditCard,
    _i15.CrudCardType type = _i15.CrudCardType.add,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          CrudCreditCardRoute.name,
          args: CrudCreditCardRouteArgs(
            key: key,
            initialCreditCard: initialCreditCard,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CrudCreditCardRoute';

  static const _i33.PageInfo<CrudCreditCardRouteArgs> page =
      _i33.PageInfo<CrudCreditCardRouteArgs>(name);
}

class CrudCreditCardRouteArgs {
  const CrudCreditCardRouteArgs({
    this.key,
    this.initialCreditCard,
    this.type = _i15.CrudCardType.add,
  });

  final _i35.Key? key;

  final _i38.CreditCardEntity? initialCreditCard;

  final _i15.CrudCardType type;

  @override
  String toString() {
    return 'CrudCreditCardRouteArgs{key: $key, initialCreditCard: $initialCreditCard, type: $type}';
  }
}

/// generated route for
/// [_i16.CrudBankAccountPage]
class CrudBankAccountRoute
    extends _i33.PageRouteInfo<CrudBankAccountRouteArgs> {
  CrudBankAccountRoute({
    _i35.Key? key,
    _i38.BankAccountEntity? initialBankAccount,
    _i16.CrudBankAccountType type = _i16.CrudBankAccountType.add,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          CrudBankAccountRoute.name,
          args: CrudBankAccountRouteArgs(
            key: key,
            initialBankAccount: initialBankAccount,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CrudBankAccountRoute';

  static const _i33.PageInfo<CrudBankAccountRouteArgs> page =
      _i33.PageInfo<CrudBankAccountRouteArgs>(name);
}

class CrudBankAccountRouteArgs {
  const CrudBankAccountRouteArgs({
    this.key,
    this.initialBankAccount,
    this.type = _i16.CrudBankAccountType.add,
  });

  final _i35.Key? key;

  final _i38.BankAccountEntity? initialBankAccount;

  final _i16.CrudBankAccountType type;

  @override
  String toString() {
    return 'CrudBankAccountRouteArgs{key: $key, initialBankAccount: $initialBankAccount, type: $type}';
  }
}

/// generated route for
/// [_i17.UserInfoPage]
class UserInfoRoute extends _i33.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i35.Key? key,
    required _i38.UserEntity user,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i33.PageInfo<UserInfoRouteArgs> page =
      _i33.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i35.Key? key;

  final _i38.UserEntity user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i18.UserEmailInfoPage]
class UserEmailInfoRoute extends _i33.PageRouteInfo<void> {
  const UserEmailInfoRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserEmailInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserEmailInfoRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i19.UserPhoneInfoPage]
class UserPhoneInfoRoute extends _i33.PageRouteInfo<void> {
  const UserPhoneInfoRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserPhoneInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserPhoneInfoRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i20.UserAccountInfoPage]
class UserAccountInfoRoute
    extends _i33.PageRouteInfo<UserAccountInfoRouteArgs> {
  UserAccountInfoRoute({
    _i35.Key? key,
    required _i39.UserEntity user,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          UserAccountInfoRoute.name,
          args: UserAccountInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserAccountInfoRoute';

  static const _i33.PageInfo<UserAccountInfoRouteArgs> page =
      _i33.PageInfo<UserAccountInfoRouteArgs>(name);
}

class UserAccountInfoRouteArgs {
  const UserAccountInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i35.Key? key;

  final _i39.UserEntity user;

  @override
  String toString() {
    return 'UserAccountInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i21.ReceiveDetailAccountPage]
class ReceiveDetailAccountRoute
    extends _i33.PageRouteInfo<ReceiveDetailAccountRouteArgs> {
  ReceiveDetailAccountRoute({
    _i35.Key? key,
    required _i39.UserEntity user,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ReceiveDetailAccountRoute.name,
          args: ReceiveDetailAccountRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveDetailAccountRoute';

  static const _i33.PageInfo<ReceiveDetailAccountRouteArgs> page =
      _i33.PageInfo<ReceiveDetailAccountRouteArgs>(name);
}

class ReceiveDetailAccountRouteArgs {
  const ReceiveDetailAccountRouteArgs({
    this.key,
    required this.user,
  });

  final _i35.Key? key;

  final _i39.UserEntity user;

  @override
  String toString() {
    return 'ReceiveDetailAccountRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i22.UserFavoriteProductPage]
class UserFavoriteProductRoute extends _i33.PageRouteInfo<void> {
  const UserFavoriteProductRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserFavoriteProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserFavoriteProductRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i23.CrudAddressPage]
class CrudAddressRoute extends _i33.PageRouteInfo<CrudAddressRouteArgs> {
  CrudAddressRoute({
    _i35.Key? key,
    _i38.UserAddressEntity? initialAddress,
    _i23.CrudAddressType type = _i23.CrudAddressType.add,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          CrudAddressRoute.name,
          args: CrudAddressRouteArgs(
            key: key,
            initialAddress: initialAddress,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CrudAddressRoute';

  static const _i33.PageInfo<CrudAddressRouteArgs> page =
      _i33.PageInfo<CrudAddressRouteArgs>(name);
}

class CrudAddressRouteArgs {
  const CrudAddressRouteArgs({
    this.key,
    this.initialAddress,
    this.type = _i23.CrudAddressType.add,
  });

  final _i35.Key? key;

  final _i38.UserAddressEntity? initialAddress;

  final _i23.CrudAddressType type;

  @override
  String toString() {
    return 'CrudAddressRouteArgs{key: $key, initialAddress: $initialAddress, type: $type}';
  }
}

/// generated route for
/// [_i24.ReceiveAddressPage]
class ReceiveAddressRoute extends _i33.PageRouteInfo<ReceiveAddressRouteArgs> {
  ReceiveAddressRoute({
    _i35.Key? key,
    required _i39.UserEntity user,
    required bool canSelectPrimary,
    String? defaultAddress,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ReceiveAddressRoute.name,
          args: ReceiveAddressRouteArgs(
            key: key,
            user: user,
            canSelectPrimary: canSelectPrimary,
            defaultAddress: defaultAddress,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveAddressRoute';

  static const _i33.PageInfo<ReceiveAddressRouteArgs> page =
      _i33.PageInfo<ReceiveAddressRouteArgs>(name);
}

class ReceiveAddressRouteArgs {
  const ReceiveAddressRouteArgs({
    this.key,
    required this.user,
    required this.canSelectPrimary,
    this.defaultAddress,
  });

  final _i35.Key? key;

  final _i39.UserEntity user;

  final bool canSelectPrimary;

  final String? defaultAddress;

  @override
  String toString() {
    return 'ReceiveAddressRouteArgs{key: $key, user: $user, canSelectPrimary: $canSelectPrimary, defaultAddress: $defaultAddress}';
  }
}

/// generated route for
/// [_i25.UserAccountPage]
class UserAccountRoute extends _i33.PageRouteInfo<void> {
  const UserAccountRoute({List<_i33.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i26.AboutPage]
class AboutRoute extends _i33.PageRouteInfo<void> {
  const AboutRoute({List<_i33.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i27.ProductSearchPage]
class ProductSearchRoute extends _i33.PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    _i35.Key? key,
    _i40.ProductFilterData? filterData,
    String? searchHint,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ProductSearchRoute.name,
          args: ProductSearchRouteArgs(
            key: key,
            filterData: filterData,
            searchHint: searchHint,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static const _i33.PageInfo<ProductSearchRouteArgs> page =
      _i33.PageInfo<ProductSearchRouteArgs>(name);
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.filterData,
    this.searchHint,
  });

  final _i35.Key? key;

  final _i40.ProductFilterData? filterData;

  final String? searchHint;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, filterData: $filterData, searchHint: $searchHint}';
  }
}

/// generated route for
/// [_i28.ProductDetailPage]
class ProductDetailRoute extends _i33.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i35.Key? key,
    required _i40.ProductEntity product,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i33.PageInfo<ProductDetailRouteArgs> page =
      _i33.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i35.Key? key;

  final _i40.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i29.CheckoutPage]
class CheckoutRoute extends _i33.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    _i35.Key? key,
    List<_i41.ShoppingCartItemGroupEntity>? cartItems,
    Set<String>? selectedCartItemIds,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(
            key: key,
            cartItems: cartItems,
            selectedCartItemIds: selectedCartItemIds,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i33.PageInfo<CheckoutRouteArgs> page =
      _i33.PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    this.key,
    this.cartItems,
    this.selectedCartItemIds,
  });

  final _i35.Key? key;

  final List<_i41.ShoppingCartItemGroupEntity>? cartItems;

  final Set<String>? selectedCartItemIds;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, cartItems: $cartItems, selectedCartItemIds: $selectedCartItemIds}';
  }
}

/// generated route for
/// [_i30.SearchPage]
class SearchRoute extends _i33.PageRouteInfo<void> {
  const SearchRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i31.MainPage]
class MainRoute extends _i33.PageRouteInfo<void> {
  const MainRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}

/// generated route for
/// [_i32.ShoppingCartPage]
class ShoppingCartRoute extends _i33.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i33.PageInfo<void> page = _i33.PageInfo<void>(name);
}
