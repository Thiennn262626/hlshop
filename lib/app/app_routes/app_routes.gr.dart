// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i34;

import 'package:auto_route/auto_route.dart' as _i32;
import 'package:hlshop/all_file/all_file.dart' as _i33;
import 'package:hlshop/app/common/presentation/otp_confirm/otp_confirm_page.dart'
    as _i31;
import 'package:hlshop/app/features/about/presentation/main/about_page.dart'
    as _i21;
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i5;
import 'package:hlshop/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i6;
import 'package:hlshop/app/features/auth/presentation/login/login_page.dart'
    as _i8;
import 'package:hlshop/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i4;
import 'package:hlshop/app/features/auth/presentation/sign_up/sign_up_page.dart'
    as _i7;
import 'package:hlshop/app/features/checkout/presentation/checkout_payment/checkout_payment_page.dart'
    as _i25;
import 'package:hlshop/app/features/checkout/presentation/main/checkout_page.dart'
    as _i26;
import 'package:hlshop/app/features/distributor/presentation/distribute_page.dart'
    as _i28;
import 'package:hlshop/app/features/home/presentation/main/home_page.dart'
    as _i1;
import 'package:hlshop/app/features/main/presentation/main_page.dart' as _i29;
import 'package:hlshop/app/features/product/presentation/all_products/all_products_page.dart'
    as _i22;
import 'package:hlshop/app/features/product/presentation/detail/product_detail_page.dart'
    as _i24;
import 'package:hlshop/app/features/product/presentation/product_search/product_search_page.dart'
    as _i23;
import 'package:hlshop/app/features/rating/presentation/main/product_rating_page.dart'
    as _i3;
import 'package:hlshop/app/features/rating/presentation/star_pickup/star_pickup_page.dart'
    as _i2;
import 'package:hlshop/app/features/search/presentation/main/search_page.dart'
    as _i27;
import 'package:hlshop/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i30;
import 'package:hlshop/app/features/user/presentation/account/user_account_page.dart'
    as _i20;
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart'
    as _i18;
import 'package:hlshop/app/features/user/presentation/address/receive_address/receive_address_page.dart'
    as _i19;
import 'package:hlshop/app/features/user/presentation/detail_account/detail_account_page.dart'
    as _i16;
import 'package:hlshop/app/features/user/presentation/detail_account/user_account%20_info/user_account%20_info_page.dart'
    as _i15;
import 'package:hlshop/app/features/user/presentation/detail_account/user_email_info/user_email_info_page.dart'
    as _i13;
import 'package:hlshop/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_page.dart'
    as _i14;
import 'package:hlshop/app/features/user/presentation/favorite_product/user_favorite_product_page.dart'
    as _i17;
import 'package:hlshop/app/features/user/presentation/info/user_info_page.dart'
    as _i12;
import 'package:hlshop/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i10;
import 'package:hlshop/app/features/user_order/presentation/main/user_order_page.dart'
    as _i11;
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/user_order_tracking_detail_page.dart'
    as _i9;

abstract class $AppAutoRoute extends _i32.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    StarPickupRoute.name: (routeData) {
      final args = routeData.argsAs<StarPickupRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.StarPickupPage(
          key: args.key,
          count: args.count,
          initialValue: args.initialValue,
        ),
      );
    },
    ProductRatingRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRatingRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ProductRatingPage(
          key: args.key,
          productEntity: args.productEntity,
        ),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.AuthOtpConfirmPage(
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
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    UserOrderTrackingDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderTrackingDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.UserOrderTrackingDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.UserOrderDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserOrderPage(),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.UserInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserEmailInfoRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UserEmailInfoPage(),
      );
    },
    UserPhoneInfoRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.UserPhoneInfoPage(),
      );
    },
    UserAccountInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserAccountInfoRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.UserAccountInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    ReceiveDetailAccountRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveDetailAccountRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ReceiveDetailAccountPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserFavoriteProductRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.UserFavoriteProductPage(),
      );
    },
    CrudAddressRoute.name: (routeData) {
      final args = routeData.argsAs<CrudAddressRouteArgs>(
          orElse: () => const CrudAddressRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.CrudAddressPage(
          key: args.key,
          initialAddress: args.initialAddress,
          type: args.type,
        ),
      );
    },
    ReceiveAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveAddressRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.ReceiveAddressPage(
          key: args.key,
          user: args.user,
          canSelectPrimary: args.canSelectPrimary,
          defaultAddress: args.defaultAddress,
        ),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.UserAccountPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.AboutPage(),
      );
    },
    AllProductsRoute.name: (routeData) {
      final args = routeData.argsAs<AllProductsRouteArgs>(
          orElse: () => const AllProductsRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.AllProductsPage(
          key: args.key,
          title: args.title,
          productListType: args.productListType,
          fetchListData: args.fetchListData,
        ),
      );
    },
    ProductSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ProductSearchRouteArgs>(
          orElse: () => const ProductSearchRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i23.ProductSearchPage(
          key: args.key,
          filterData: args.filterData,
          searchHint: args.searchHint,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CheckoutPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutPaymentRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.CheckoutPaymentPage(
          key: args.key,
          paymentMethod: args.paymentMethod,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.CheckoutPage(
          key: args.key,
          cartItems: args.cartItems,
          selectedCartItemIds: args.selectedCartItemIds,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SearchPage(),
      );
    },
    DistributeRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.DistributePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.MainPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.ShoppingCartPage(),
      );
    },
    OtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<OtpConfirmRouteArgs>();
      return _i32.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i31.OtpConfirmPage(
          requestOtpResult: args.requestOtpResult,
          confirmOTPFunc: args.confirmOTPFunc,
          onResendOTP: args.onResendOTP,
          otpLength: args.otpLength,
          otpMessage: args.otpMessage,
          key: args.key,
          successMessage: args.successMessage,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i32.PageRouteInfo<void> {
  const HomeRoute({List<_i32.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i2.StarPickupPage]
class StarPickupRoute extends _i32.PageRouteInfo<StarPickupRouteArgs> {
  StarPickupRoute({
    _i33.Key? key,
    required List<int?> count,
    int? initialValue,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          StarPickupRoute.name,
          args: StarPickupRouteArgs(
            key: key,
            count: count,
            initialValue: initialValue,
          ),
          initialChildren: children,
        );

  static const String name = 'StarPickupRoute';

  static const _i32.PageInfo<StarPickupRouteArgs> page =
      _i32.PageInfo<StarPickupRouteArgs>(name);
}

class StarPickupRouteArgs {
  const StarPickupRouteArgs({
    this.key,
    required this.count,
    this.initialValue,
  });

  final _i33.Key? key;

  final List<int?> count;

  final int? initialValue;

  @override
  String toString() {
    return 'StarPickupRouteArgs{key: $key, count: $count, initialValue: $initialValue}';
  }
}

/// generated route for
/// [_i3.ProductRatingPage]
class ProductRatingRoute extends _i32.PageRouteInfo<ProductRatingRouteArgs> {
  ProductRatingRoute({
    _i33.Key? key,
    required _i33.ProductEntity? productEntity,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ProductRatingRoute.name,
          args: ProductRatingRouteArgs(
            key: key,
            productEntity: productEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i32.PageInfo<ProductRatingRouteArgs> page =
      _i32.PageInfo<ProductRatingRouteArgs>(name);
}

class ProductRatingRouteArgs {
  const ProductRatingRouteArgs({
    this.key,
    required this.productEntity,
  });

  final _i33.Key? key;

  final _i33.ProductEntity? productEntity;

  @override
  String toString() {
    return 'ProductRatingRouteArgs{key: $key, productEntity: $productEntity}';
  }
}

/// generated route for
/// [_i4.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i32.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i34.Future<bool> Function(String) confirmOTPFunc,
    required _i34.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i33.Key? key,
    String? successMessage,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i32.PageInfo<AuthOtpConfirmRouteArgs>(name);
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

  final _i33.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i5.ChangePasswordPage]
class ChangePasswordRoute extends _i32.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i33.Key? key,
    required String userID,
    required String uuid,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<ChangePasswordRouteArgs> page =
      _i32.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i33.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i32.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i32.PageRouteInfo<void> {
  const SignUpRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i32.PageRouteInfo<void> {
  const LoginRoute({List<_i32.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UserOrderTrackingDetailPage]
class UserOrderTrackingDetailRoute
    extends _i32.PageRouteInfo<UserOrderTrackingDetailRouteArgs> {
  UserOrderTrackingDetailRoute({
    _i33.Key? key,
    required _i33.OrderDataEntity? order,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          UserOrderTrackingDetailRoute.name,
          args: UserOrderTrackingDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderTrackingDetailRoute';

  static const _i32.PageInfo<UserOrderTrackingDetailRouteArgs> page =
      _i32.PageInfo<UserOrderTrackingDetailRouteArgs>(name);
}

class UserOrderTrackingDetailRouteArgs {
  const UserOrderTrackingDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i33.Key? key;

  final _i33.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderTrackingDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i10.UserOrderDetailPage]
class UserOrderDetailRoute
    extends _i32.PageRouteInfo<UserOrderDetailRouteArgs> {
  UserOrderDetailRoute({
    _i33.Key? key,
    required _i33.OrderDataEntity? order,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          UserOrderDetailRoute.name,
          args: UserOrderDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i32.PageInfo<UserOrderDetailRouteArgs> page =
      _i32.PageInfo<UserOrderDetailRouteArgs>(name);
}

class UserOrderDetailRouteArgs {
  const UserOrderDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i33.Key? key;

  final _i33.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i11.UserOrderPage]
class UserOrderRoute extends _i32.PageRouteInfo<void> {
  const UserOrderRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UserInfoPage]
class UserInfoRoute extends _i32.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i33.Key? key,
    required _i33.UserEntity user,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i32.PageInfo<UserInfoRouteArgs> page =
      _i32.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i33.Key? key;

  final _i33.UserEntity user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i13.UserEmailInfoPage]
class UserEmailInfoRoute extends _i32.PageRouteInfo<void> {
  const UserEmailInfoRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserEmailInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserEmailInfoRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UserPhoneInfoPage]
class UserPhoneInfoRoute extends _i32.PageRouteInfo<void> {
  const UserPhoneInfoRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserPhoneInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserPhoneInfoRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i15.UserAccountInfoPage]
class UserAccountInfoRoute
    extends _i32.PageRouteInfo<UserAccountInfoRouteArgs> {
  UserAccountInfoRoute({
    _i33.Key? key,
    required _i33.UserEntity user,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          UserAccountInfoRoute.name,
          args: UserAccountInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserAccountInfoRoute';

  static const _i32.PageInfo<UserAccountInfoRouteArgs> page =
      _i32.PageInfo<UserAccountInfoRouteArgs>(name);
}

class UserAccountInfoRouteArgs {
  const UserAccountInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i33.Key? key;

  final _i33.UserEntity user;

  @override
  String toString() {
    return 'UserAccountInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i16.ReceiveDetailAccountPage]
class ReceiveDetailAccountRoute
    extends _i32.PageRouteInfo<ReceiveDetailAccountRouteArgs> {
  ReceiveDetailAccountRoute({
    _i33.Key? key,
    required _i33.UserEntity user,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ReceiveDetailAccountRoute.name,
          args: ReceiveDetailAccountRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveDetailAccountRoute';

  static const _i32.PageInfo<ReceiveDetailAccountRouteArgs> page =
      _i32.PageInfo<ReceiveDetailAccountRouteArgs>(name);
}

class ReceiveDetailAccountRouteArgs {
  const ReceiveDetailAccountRouteArgs({
    this.key,
    required this.user,
  });

  final _i33.Key? key;

  final _i33.UserEntity user;

  @override
  String toString() {
    return 'ReceiveDetailAccountRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i17.UserFavoriteProductPage]
class UserFavoriteProductRoute extends _i32.PageRouteInfo<void> {
  const UserFavoriteProductRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserFavoriteProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserFavoriteProductRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i18.CrudAddressPage]
class CrudAddressRoute extends _i32.PageRouteInfo<CrudAddressRouteArgs> {
  CrudAddressRoute({
    _i33.Key? key,
    _i33.UserAddressEntity? initialAddress,
    _i18.CrudAddressType type = _i18.CrudAddressType.add,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<CrudAddressRouteArgs> page =
      _i32.PageInfo<CrudAddressRouteArgs>(name);
}

class CrudAddressRouteArgs {
  const CrudAddressRouteArgs({
    this.key,
    this.initialAddress,
    this.type = _i18.CrudAddressType.add,
  });

  final _i33.Key? key;

  final _i33.UserAddressEntity? initialAddress;

  final _i18.CrudAddressType type;

  @override
  String toString() {
    return 'CrudAddressRouteArgs{key: $key, initialAddress: $initialAddress, type: $type}';
  }
}

/// generated route for
/// [_i19.ReceiveAddressPage]
class ReceiveAddressRoute extends _i32.PageRouteInfo<ReceiveAddressRouteArgs> {
  ReceiveAddressRoute({
    _i33.Key? key,
    required _i33.UserEntity user,
    required bool canSelectPrimary,
    String? defaultAddress,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<ReceiveAddressRouteArgs> page =
      _i32.PageInfo<ReceiveAddressRouteArgs>(name);
}

class ReceiveAddressRouteArgs {
  const ReceiveAddressRouteArgs({
    this.key,
    required this.user,
    required this.canSelectPrimary,
    this.defaultAddress,
  });

  final _i33.Key? key;

  final _i33.UserEntity user;

  final bool canSelectPrimary;

  final String? defaultAddress;

  @override
  String toString() {
    return 'ReceiveAddressRouteArgs{key: $key, user: $user, canSelectPrimary: $canSelectPrimary, defaultAddress: $defaultAddress}';
  }
}

/// generated route for
/// [_i20.UserAccountPage]
class UserAccountRoute extends _i32.PageRouteInfo<void> {
  const UserAccountRoute({List<_i32.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i21.AboutPage]
class AboutRoute extends _i32.PageRouteInfo<void> {
  const AboutRoute({List<_i32.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i22.AllProductsPage]
class AllProductsRoute extends _i32.PageRouteInfo<AllProductsRouteArgs> {
  AllProductsRoute({
    _i33.Key? key,
    Object? title,
    _i33.ProductListType? productListType,
    _i34.Future<List<_i33.ProductEntity>> Function(
      int,
      int,
    )? fetchListData,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          AllProductsRoute.name,
          args: AllProductsRouteArgs(
            key: key,
            title: title,
            productListType: productListType,
            fetchListData: fetchListData,
          ),
          initialChildren: children,
        );

  static const String name = 'AllProductsRoute';

  static const _i32.PageInfo<AllProductsRouteArgs> page =
      _i32.PageInfo<AllProductsRouteArgs>(name);
}

class AllProductsRouteArgs {
  const AllProductsRouteArgs({
    this.key,
    this.title,
    this.productListType,
    this.fetchListData,
  });

  final _i33.Key? key;

  final Object? title;

  final _i33.ProductListType? productListType;

  final _i34.Future<List<_i33.ProductEntity>> Function(
    int,
    int,
  )? fetchListData;

  @override
  String toString() {
    return 'AllProductsRouteArgs{key: $key, title: $title, productListType: $productListType, fetchListData: $fetchListData}';
  }
}

/// generated route for
/// [_i23.ProductSearchPage]
class ProductSearchRoute extends _i32.PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    _i33.Key? key,
    _i33.ProductFilterData? filterData,
    String? searchHint,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<ProductSearchRouteArgs> page =
      _i32.PageInfo<ProductSearchRouteArgs>(name);
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.filterData,
    this.searchHint,
  });

  final _i33.Key? key;

  final _i33.ProductFilterData? filterData;

  final String? searchHint;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, filterData: $filterData, searchHint: $searchHint}';
  }
}

/// generated route for
/// [_i24.ProductDetailPage]
class ProductDetailRoute extends _i32.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i33.Key? key,
    required _i33.ProductEntity product,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i32.PageInfo<ProductDetailRouteArgs> page =
      _i32.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i33.Key? key;

  final _i33.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i25.CheckoutPaymentPage]
class CheckoutPaymentRoute
    extends _i32.PageRouteInfo<CheckoutPaymentRouteArgs> {
  CheckoutPaymentRoute({
    _i33.Key? key,
    required int paymentMethod,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          CheckoutPaymentRoute.name,
          args: CheckoutPaymentRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutPaymentRoute';

  static const _i32.PageInfo<CheckoutPaymentRouteArgs> page =
      _i32.PageInfo<CheckoutPaymentRouteArgs>(name);
}

class CheckoutPaymentRouteArgs {
  const CheckoutPaymentRouteArgs({
    this.key,
    required this.paymentMethod,
  });

  final _i33.Key? key;

  final int paymentMethod;

  @override
  String toString() {
    return 'CheckoutPaymentRouteArgs{key: $key, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i26.CheckoutPage]
class CheckoutRoute extends _i32.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    _i33.Key? key,
    List<_i33.ShoppingCartItemEntity>? cartItems,
    Set<String>? selectedCartItemIds,
    List<_i32.PageRouteInfo>? children,
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

  static const _i32.PageInfo<CheckoutRouteArgs> page =
      _i32.PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    this.key,
    this.cartItems,
    this.selectedCartItemIds,
  });

  final _i33.Key? key;

  final List<_i33.ShoppingCartItemEntity>? cartItems;

  final Set<String>? selectedCartItemIds;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, cartItems: $cartItems, selectedCartItemIds: $selectedCartItemIds}';
  }
}

/// generated route for
/// [_i27.SearchPage]
class SearchRoute extends _i32.PageRouteInfo<void> {
  const SearchRoute({List<_i32.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i28.DistributePage]
class DistributeRoute extends _i32.PageRouteInfo<void> {
  const DistributeRoute({List<_i32.PageRouteInfo>? children})
      : super(
          DistributeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DistributeRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i29.MainPage]
class MainRoute extends _i32.PageRouteInfo<void> {
  const MainRoute({List<_i32.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i30.ShoppingCartPage]
class ShoppingCartRoute extends _i32.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i32.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i32.PageInfo<void> page = _i32.PageInfo<void>(name);
}

/// generated route for
/// [_i31.OtpConfirmPage]
class OtpConfirmRoute extends _i32.PageRouteInfo<OtpConfirmRouteArgs> {
  OtpConfirmRoute({
    required Object? requestOtpResult,
    required _i34.Future<bool> Function(
      String,
      Object?,
    ) confirmOTPFunc,
    required _i34.Future<Object?> Function(Object?) onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i33.Key? key,
    String? successMessage,
    List<_i32.PageRouteInfo>? children,
  }) : super(
          OtpConfirmRoute.name,
          args: OtpConfirmRouteArgs(
            requestOtpResult: requestOtpResult,
            confirmOTPFunc: confirmOTPFunc,
            onResendOTP: onResendOTP,
            otpLength: otpLength,
            otpMessage: otpMessage,
            key: key,
            successMessage: successMessage,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpConfirmRoute';

  static const _i32.PageInfo<OtpConfirmRouteArgs> page =
      _i32.PageInfo<OtpConfirmRouteArgs>(name);
}

class OtpConfirmRouteArgs {
  const OtpConfirmRouteArgs({
    required this.requestOtpResult,
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    this.key,
    this.successMessage,
  });

  final Object? requestOtpResult;

  final _i34.Future<bool> Function(
    String,
    Object?,
  ) confirmOTPFunc;

  final _i34.Future<Object?> Function(Object?) onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i33.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'OtpConfirmRouteArgs{requestOtpResult: $requestOtpResult, confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}
