// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i38;

import 'package:auto_route/auto_route.dart' as _i37;
import 'package:hlshop/all_file/all_file.dart' as _i39;
import 'package:hlshop/app/common/presentation/otp_confirm/otp_confirm_page.dart'
    as _i1;
import 'package:hlshop/app/features/about/presentation/main/about_page.dart'
    as _i2;
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart'
    as _i3;
import 'package:hlshop/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart'
    as _i4;
import 'package:hlshop/app/features/auth/presentation/login/login_page.dart'
    as _i5;
import 'package:hlshop/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart'
    as _i6;
import 'package:hlshop/app/features/auth/presentation/sign_up/sign_up_page.dart'
    as _i7;
import 'package:hlshop/app/features/checkout/presentation/checkout_payment/checkout_payment_page.dart'
    as _i8;
import 'package:hlshop/app/features/checkout/presentation/main/checkout_page.dart'
    as _i9;
import 'package:hlshop/app/features/distributor/presentation/distribute_page.dart'
    as _i10;
import 'package:hlshop/app/features/home/presentation/main/home_page.dart'
    as _i11;
import 'package:hlshop/app/features/main/presentation/main_page.dart' as _i12;
import 'package:hlshop/app/features/product/presentation/all_products/all_products_page.dart'
    as _i13;
import 'package:hlshop/app/features/product/presentation/detail/product_detail_page.dart'
    as _i14;
import 'package:hlshop/app/features/product/presentation/product_photos/product_photos_page.dart'
    as _i15;
import 'package:hlshop/app/features/product/presentation/product_search/product_search_page.dart'
    as _i16;
import 'package:hlshop/app/features/rating/presentation/main/product_rating_page.dart'
    as _i17;
import 'package:hlshop/app/features/rating/presentation/rating/rating_page.dart'
    as _i18;
import 'package:hlshop/app/features/rating/presentation/rating_view/rating_view_page.dart'
    as _i19;
import 'package:hlshop/app/features/rating/presentation/star_pickup/star_pickup_page.dart'
    as _i20;
import 'package:hlshop/app/features/rating/presentation/update_rating/update_rating_page.dart'
    as _i21;
import 'package:hlshop/app/features/rating/presentation/user_rating_view/user_rating_view_page.dart'
    as _i36;
import 'package:hlshop/app/features/search/presentation/main/search_page.dart'
    as _i22;
import 'package:hlshop/app/features/shopping_cart/presentation/main/shopping_cart_page.dart'
    as _i23;
import 'package:hlshop/app/features/user/presentation/account/user_account_page.dart'
    as _i24;
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart'
    as _i25;
import 'package:hlshop/app/features/user/presentation/address/receive_address/receive_address_page.dart'
    as _i26;
import 'package:hlshop/app/features/user/presentation/detail_account/detail_account_page.dart'
    as _i27;
import 'package:hlshop/app/features/user/presentation/detail_account/user_account%20_info/user_account%20_info_page.dart'
    as _i28;
import 'package:hlshop/app/features/user/presentation/detail_account/user_email_info/user_email_info_page.dart'
    as _i29;
import 'package:hlshop/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_page.dart'
    as _i30;
import 'package:hlshop/app/features/user/presentation/favorite_product/user_favorite_product_page.dart'
    as _i31;
import 'package:hlshop/app/features/user/presentation/info/user_info_page.dart'
    as _i32;
import 'package:hlshop/app/features/user_order/presentation/detail/user_order_detail_page.dart'
    as _i33;
import 'package:hlshop/app/features/user_order/presentation/main/user_order_page.dart'
    as _i34;
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/user_order_tracking_detail_page.dart'
    as _i35;

abstract class $AppAutoRoute extends _i37.RootStackRouter {
  $AppAutoRoute({super.navigatorKey});

  @override
  final Map<String, _i37.PageFactory> pagesMap = {
    OtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<OtpConfirmRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.OtpConfirmPage(
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
    AboutRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AboutPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ChangePasswordPage(
          key: args.key,
          userID: args.userID,
          uuid: args.uuid,
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    AuthOtpConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<AuthOtpConfirmRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.AuthOtpConfirmPage(
          confirmOTPFunc: args.confirmOTPFunc,
          onResendOTP: args.onResendOTP,
          otpLength: args.otpLength,
          otpMessage: args.otpMessage,
          key: args.key,
          successMessage: args.successMessage,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
    CheckoutPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutPaymentRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.CheckoutPaymentPage(
          key: args.key,
          paymentMethod: args.paymentMethod,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.CheckoutPage(
          key: args.key,
          cartItems: args.cartItems,
          selectedCartItemIds: args.selectedCartItemIds,
        ),
      );
    },
    DistributeRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DistributePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MainPage(),
      );
    },
    AllProductsRoute.name: (routeData) {
      final args = routeData.argsAs<AllProductsRouteArgs>(
          orElse: () => const AllProductsRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.AllProductsPage(
          key: args.key,
          title: args.title,
          productListType: args.productListType,
          fetchListData: args.fetchListData,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProductPhotosRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPhotosRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.ProductPhotosPage(
          key: args.key,
          imgList: args.imgList,
          currentIndex: args.currentIndex,
        ),
      );
    },
    ProductSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ProductSearchRouteArgs>(
          orElse: () => const ProductSearchRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ProductSearchPage(
          key: args.key,
          filterData: args.filterData,
          searchHint: args.searchHint,
        ),
      );
    },
    ProductRatingRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRatingRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ProductRatingPage(
          key: args.key,
          productEntity: args.productEntity,
        ),
      );
    },
    RatingRoute.name: (routeData) {
      final args = routeData.argsAs<RatingRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.RatingPage(
          key: args.key,
          orderDataEntity: args.orderDataEntity,
        ),
      );
    },
    RatingViewRoute.name: (routeData) {
      final args = routeData.argsAs<RatingViewRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.RatingViewPage(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    StarPickupRoute.name: (routeData) {
      final args = routeData.argsAs<StarPickupRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.StarPickupPage(
          key: args.key,
          count: args.count,
          initialValue: args.initialValue,
        ),
      );
    },
    UpdateRatingRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateRatingRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.UpdateRatingPage(
          key: args.key,
          ratingItemEntity: args.ratingItemEntity,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.SearchPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ShoppingCartPage(),
      );
    },
    UserAccountRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.UserAccountPage(),
      );
    },
    CrudAddressRoute.name: (routeData) {
      final args = routeData.argsAs<CrudAddressRouteArgs>(
          orElse: () => const CrudAddressRouteArgs());
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.CrudAddressPage(
          key: args.key,
          initialAddress: args.initialAddress,
          type: args.type,
        ),
      );
    },
    ReceiveAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveAddressRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.ReceiveAddressPage(
          key: args.key,
          user: args.user,
          canSelectPrimary: args.canSelectPrimary,
          defaultAddress: args.defaultAddress,
        ),
      );
    },
    ReceiveDetailAccountRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveDetailAccountRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i27.ReceiveDetailAccountPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserAccountInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserAccountInfoRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i28.UserAccountInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserEmailInfoRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.UserEmailInfoPage(),
      );
    },
    UserPhoneInfoRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.UserPhoneInfoPage(),
      );
    },
    UserFavoriteProductRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.UserFavoriteProductPage(),
      );
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i32.UserInfoPage(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserOrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderDetailRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i33.UserOrderDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserOrderRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i34.UserOrderPage(),
      );
    },
    UserOrderTrackingDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserOrderTrackingDetailRouteArgs>();
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i35.UserOrderTrackingDetailPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserRatingViewRoute.name: (routeData) {
      return _i37.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.UserRatingViewPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.OtpConfirmPage]
class OtpConfirmRoute extends _i37.PageRouteInfo<OtpConfirmRouteArgs> {
  OtpConfirmRoute({
    required Object? requestOtpResult,
    required _i38.Future<bool> Function(
      String,
      Object?,
    ) confirmOTPFunc,
    required _i38.Future<Object?> Function(Object?) onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i39.Key? key,
    String? successMessage,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<OtpConfirmRouteArgs> page =
      _i37.PageInfo<OtpConfirmRouteArgs>(name);
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

  final _i38.Future<bool> Function(
    String,
    Object?,
  ) confirmOTPFunc;

  final _i38.Future<Object?> Function(Object?) onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i39.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'OtpConfirmRouteArgs{requestOtpResult: $requestOtpResult, confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i2.AboutPage]
class AboutRoute extends _i37.PageRouteInfo<void> {
  const AboutRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChangePasswordPage]
class ChangePasswordRoute extends _i37.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    _i39.Key? key,
    required String userID,
    required String uuid,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<ChangePasswordRouteArgs> page =
      _i37.PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.userID,
    required this.uuid,
  });

  final _i39.Key? key;

  final String userID;

  final String uuid;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, userID: $userID, uuid: $uuid}';
  }
}

/// generated route for
/// [_i4.ForgotPasswordPage]
class ForgotPasswordRoute extends _i37.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i37.PageRouteInfo<void> {
  const LoginRoute({List<_i37.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AuthOtpConfirmPage]
class AuthOtpConfirmRoute extends _i37.PageRouteInfo<AuthOtpConfirmRouteArgs> {
  AuthOtpConfirmRoute({
    required _i38.Future<bool> Function(String) confirmOTPFunc,
    required _i38.Future<Object?> Function() onResendOTP,
    int otpLength = 4,
    String? otpMessage,
    _i39.Key? key,
    String? successMessage,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<AuthOtpConfirmRouteArgs> page =
      _i37.PageInfo<AuthOtpConfirmRouteArgs>(name);
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

  final _i38.Future<bool> Function(String) confirmOTPFunc;

  final _i38.Future<Object?> Function() onResendOTP;

  final int otpLength;

  final String? otpMessage;

  final _i39.Key? key;

  final String? successMessage;

  @override
  String toString() {
    return 'AuthOtpConfirmRouteArgs{confirmOTPFunc: $confirmOTPFunc, onResendOTP: $onResendOTP, otpLength: $otpLength, otpMessage: $otpMessage, key: $key, successMessage: $successMessage}';
  }
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i37.PageRouteInfo<void> {
  const SignUpRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CheckoutPaymentPage]
class CheckoutPaymentRoute
    extends _i37.PageRouteInfo<CheckoutPaymentRouteArgs> {
  CheckoutPaymentRoute({
    _i39.Key? key,
    required int paymentMethod,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          CheckoutPaymentRoute.name,
          args: CheckoutPaymentRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutPaymentRoute';

  static const _i37.PageInfo<CheckoutPaymentRouteArgs> page =
      _i37.PageInfo<CheckoutPaymentRouteArgs>(name);
}

class CheckoutPaymentRouteArgs {
  const CheckoutPaymentRouteArgs({
    this.key,
    required this.paymentMethod,
  });

  final _i39.Key? key;

  final int paymentMethod;

  @override
  String toString() {
    return 'CheckoutPaymentRouteArgs{key: $key, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [_i9.CheckoutPage]
class CheckoutRoute extends _i37.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    _i39.Key? key,
    List<_i39.ShoppingCartItemEntity>? cartItems,
    Set<String>? selectedCartItemIds,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CheckoutRouteArgs> page =
      _i37.PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    this.key,
    this.cartItems,
    this.selectedCartItemIds,
  });

  final _i39.Key? key;

  final List<_i39.ShoppingCartItemEntity>? cartItems;

  final Set<String>? selectedCartItemIds;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key, cartItems: $cartItems, selectedCartItemIds: $selectedCartItemIds}';
  }
}

/// generated route for
/// [_i10.DistributePage]
class DistributeRoute extends _i37.PageRouteInfo<void> {
  const DistributeRoute({List<_i37.PageRouteInfo>? children})
      : super(
          DistributeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DistributeRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i37.PageRouteInfo<void> {
  const HomeRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MainPage]
class MainRoute extends _i37.PageRouteInfo<void> {
  const MainRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i13.AllProductsPage]
class AllProductsRoute extends _i37.PageRouteInfo<AllProductsRouteArgs> {
  AllProductsRoute({
    _i39.Key? key,
    Object? title,
    _i39.ProductListType? productListType,
    _i38.Future<List<_i39.ProductEntity>> Function(
      int,
      int,
    )? fetchListData,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<AllProductsRouteArgs> page =
      _i37.PageInfo<AllProductsRouteArgs>(name);
}

class AllProductsRouteArgs {
  const AllProductsRouteArgs({
    this.key,
    this.title,
    this.productListType,
    this.fetchListData,
  });

  final _i39.Key? key;

  final Object? title;

  final _i39.ProductListType? productListType;

  final _i38.Future<List<_i39.ProductEntity>> Function(
    int,
    int,
  )? fetchListData;

  @override
  String toString() {
    return 'AllProductsRouteArgs{key: $key, title: $title, productListType: $productListType, fetchListData: $fetchListData}';
  }
}

/// generated route for
/// [_i14.ProductDetailPage]
class ProductDetailRoute extends _i37.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i39.Key? key,
    required _i39.ProductEntity product,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i37.PageInfo<ProductDetailRouteArgs> page =
      _i37.PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i39.Key? key;

  final _i39.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i15.ProductPhotosPage]
class ProductPhotosRoute extends _i37.PageRouteInfo<ProductPhotosRouteArgs> {
  ProductPhotosRoute({
    _i39.Key? key,
    required List<String> imgList,
    required int currentIndex,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ProductPhotosRoute.name,
          args: ProductPhotosRouteArgs(
            key: key,
            imgList: imgList,
            currentIndex: currentIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductPhotosRoute';

  static const _i37.PageInfo<ProductPhotosRouteArgs> page =
      _i37.PageInfo<ProductPhotosRouteArgs>(name);
}

class ProductPhotosRouteArgs {
  const ProductPhotosRouteArgs({
    this.key,
    required this.imgList,
    required this.currentIndex,
  });

  final _i39.Key? key;

  final List<String> imgList;

  final int currentIndex;

  @override
  String toString() {
    return 'ProductPhotosRouteArgs{key: $key, imgList: $imgList, currentIndex: $currentIndex}';
  }
}

/// generated route for
/// [_i16.ProductSearchPage]
class ProductSearchRoute extends _i37.PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    _i39.Key? key,
    _i39.ProductFilterData? filterData,
    String? searchHint,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<ProductSearchRouteArgs> page =
      _i37.PageInfo<ProductSearchRouteArgs>(name);
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.filterData,
    this.searchHint,
  });

  final _i39.Key? key;

  final _i39.ProductFilterData? filterData;

  final String? searchHint;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, filterData: $filterData, searchHint: $searchHint}';
  }
}

/// generated route for
/// [_i17.ProductRatingPage]
class ProductRatingRoute extends _i37.PageRouteInfo<ProductRatingRouteArgs> {
  ProductRatingRoute({
    _i39.Key? key,
    required _i39.ProductEntity? productEntity,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ProductRatingRoute.name,
          args: ProductRatingRouteArgs(
            key: key,
            productEntity: productEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRatingRoute';

  static const _i37.PageInfo<ProductRatingRouteArgs> page =
      _i37.PageInfo<ProductRatingRouteArgs>(name);
}

class ProductRatingRouteArgs {
  const ProductRatingRouteArgs({
    this.key,
    required this.productEntity,
  });

  final _i39.Key? key;

  final _i39.ProductEntity? productEntity;

  @override
  String toString() {
    return 'ProductRatingRouteArgs{key: $key, productEntity: $productEntity}';
  }
}

/// generated route for
/// [_i18.RatingPage]
class RatingRoute extends _i37.PageRouteInfo<RatingRouteArgs> {
  RatingRoute({
    _i39.Key? key,
    required _i39.OrderDataEntity orderDataEntity,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          RatingRoute.name,
          args: RatingRouteArgs(
            key: key,
            orderDataEntity: orderDataEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'RatingRoute';

  static const _i37.PageInfo<RatingRouteArgs> page =
      _i37.PageInfo<RatingRouteArgs>(name);
}

class RatingRouteArgs {
  const RatingRouteArgs({
    this.key,
    required this.orderDataEntity,
  });

  final _i39.Key? key;

  final _i39.OrderDataEntity orderDataEntity;

  @override
  String toString() {
    return 'RatingRouteArgs{key: $key, orderDataEntity: $orderDataEntity}';
  }
}

/// generated route for
/// [_i19.RatingViewPage]
class RatingViewRoute extends _i37.PageRouteInfo<RatingViewRouteArgs> {
  RatingViewRoute({
    _i39.Key? key,
    required String orderId,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          RatingViewRoute.name,
          args: RatingViewRouteArgs(
            key: key,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'RatingViewRoute';

  static const _i37.PageInfo<RatingViewRouteArgs> page =
      _i37.PageInfo<RatingViewRouteArgs>(name);
}

class RatingViewRouteArgs {
  const RatingViewRouteArgs({
    this.key,
    required this.orderId,
  });

  final _i39.Key? key;

  final String orderId;

  @override
  String toString() {
    return 'RatingViewRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [_i20.StarPickupPage]
class StarPickupRoute extends _i37.PageRouteInfo<StarPickupRouteArgs> {
  StarPickupRoute({
    _i39.Key? key,
    required List<int?> count,
    int? initialValue,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<StarPickupRouteArgs> page =
      _i37.PageInfo<StarPickupRouteArgs>(name);
}

class StarPickupRouteArgs {
  const StarPickupRouteArgs({
    this.key,
    required this.count,
    this.initialValue,
  });

  final _i39.Key? key;

  final List<int?> count;

  final int? initialValue;

  @override
  String toString() {
    return 'StarPickupRouteArgs{key: $key, count: $count, initialValue: $initialValue}';
  }
}

/// generated route for
/// [_i21.UpdateRatingPage]
class UpdateRatingRoute extends _i37.PageRouteInfo<UpdateRatingRouteArgs> {
  UpdateRatingRoute({
    _i39.Key? key,
    required _i39.RatingItemEntity ratingItemEntity,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UpdateRatingRoute.name,
          args: UpdateRatingRouteArgs(
            key: key,
            ratingItemEntity: ratingItemEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateRatingRoute';

  static const _i37.PageInfo<UpdateRatingRouteArgs> page =
      _i37.PageInfo<UpdateRatingRouteArgs>(name);
}

class UpdateRatingRouteArgs {
  const UpdateRatingRouteArgs({
    this.key,
    required this.ratingItemEntity,
  });

  final _i39.Key? key;

  final _i39.RatingItemEntity ratingItemEntity;

  @override
  String toString() {
    return 'UpdateRatingRouteArgs{key: $key, ratingItemEntity: $ratingItemEntity}';
  }
}

/// generated route for
/// [_i22.SearchPage]
class SearchRoute extends _i37.PageRouteInfo<void> {
  const SearchRoute({List<_i37.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ShoppingCartPage]
class ShoppingCartRoute extends _i37.PageRouteInfo<void> {
  const ShoppingCartRoute({List<_i37.PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i24.UserAccountPage]
class UserAccountRoute extends _i37.PageRouteInfo<void> {
  const UserAccountRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserAccountRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i25.CrudAddressPage]
class CrudAddressRoute extends _i37.PageRouteInfo<CrudAddressRouteArgs> {
  CrudAddressRoute({
    _i39.Key? key,
    _i39.UserAddressEntity? initialAddress,
    _i25.CrudAddressType type = _i25.CrudAddressType.add,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<CrudAddressRouteArgs> page =
      _i37.PageInfo<CrudAddressRouteArgs>(name);
}

class CrudAddressRouteArgs {
  const CrudAddressRouteArgs({
    this.key,
    this.initialAddress,
    this.type = _i25.CrudAddressType.add,
  });

  final _i39.Key? key;

  final _i39.UserAddressEntity? initialAddress;

  final _i25.CrudAddressType type;

  @override
  String toString() {
    return 'CrudAddressRouteArgs{key: $key, initialAddress: $initialAddress, type: $type}';
  }
}

/// generated route for
/// [_i26.ReceiveAddressPage]
class ReceiveAddressRoute extends _i37.PageRouteInfo<ReceiveAddressRouteArgs> {
  ReceiveAddressRoute({
    _i39.Key? key,
    required _i39.UserEntity user,
    required bool canSelectPrimary,
    String? defaultAddress,
    List<_i37.PageRouteInfo>? children,
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

  static const _i37.PageInfo<ReceiveAddressRouteArgs> page =
      _i37.PageInfo<ReceiveAddressRouteArgs>(name);
}

class ReceiveAddressRouteArgs {
  const ReceiveAddressRouteArgs({
    this.key,
    required this.user,
    required this.canSelectPrimary,
    this.defaultAddress,
  });

  final _i39.Key? key;

  final _i39.UserEntity user;

  final bool canSelectPrimary;

  final String? defaultAddress;

  @override
  String toString() {
    return 'ReceiveAddressRouteArgs{key: $key, user: $user, canSelectPrimary: $canSelectPrimary, defaultAddress: $defaultAddress}';
  }
}

/// generated route for
/// [_i27.ReceiveDetailAccountPage]
class ReceiveDetailAccountRoute
    extends _i37.PageRouteInfo<ReceiveDetailAccountRouteArgs> {
  ReceiveDetailAccountRoute({
    _i39.Key? key,
    required _i39.UserEntity user,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          ReceiveDetailAccountRoute.name,
          args: ReceiveDetailAccountRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiveDetailAccountRoute';

  static const _i37.PageInfo<ReceiveDetailAccountRouteArgs> page =
      _i37.PageInfo<ReceiveDetailAccountRouteArgs>(name);
}

class ReceiveDetailAccountRouteArgs {
  const ReceiveDetailAccountRouteArgs({
    this.key,
    required this.user,
  });

  final _i39.Key? key;

  final _i39.UserEntity user;

  @override
  String toString() {
    return 'ReceiveDetailAccountRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i28.UserAccountInfoPage]
class UserAccountInfoRoute
    extends _i37.PageRouteInfo<UserAccountInfoRouteArgs> {
  UserAccountInfoRoute({
    _i39.Key? key,
    required _i39.UserEntity user,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UserAccountInfoRoute.name,
          args: UserAccountInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserAccountInfoRoute';

  static const _i37.PageInfo<UserAccountInfoRouteArgs> page =
      _i37.PageInfo<UserAccountInfoRouteArgs>(name);
}

class UserAccountInfoRouteArgs {
  const UserAccountInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i39.Key? key;

  final _i39.UserEntity user;

  @override
  String toString() {
    return 'UserAccountInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i29.UserEmailInfoPage]
class UserEmailInfoRoute extends _i37.PageRouteInfo<void> {
  const UserEmailInfoRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserEmailInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserEmailInfoRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i30.UserPhoneInfoPage]
class UserPhoneInfoRoute extends _i37.PageRouteInfo<void> {
  const UserPhoneInfoRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserPhoneInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserPhoneInfoRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i31.UserFavoriteProductPage]
class UserFavoriteProductRoute extends _i37.PageRouteInfo<void> {
  const UserFavoriteProductRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserFavoriteProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserFavoriteProductRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i32.UserInfoPage]
class UserInfoRoute extends _i37.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({
    _i39.Key? key,
    required _i39.UserEntity user,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UserInfoRoute.name,
          args: UserInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i37.PageInfo<UserInfoRouteArgs> page =
      _i37.PageInfo<UserInfoRouteArgs>(name);
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({
    this.key,
    required this.user,
  });

  final _i39.Key? key;

  final _i39.UserEntity user;

  @override
  String toString() {
    return 'UserInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i33.UserOrderDetailPage]
class UserOrderDetailRoute
    extends _i37.PageRouteInfo<UserOrderDetailRouteArgs> {
  UserOrderDetailRoute({
    _i39.Key? key,
    required _i39.OrderDataEntity? order,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UserOrderDetailRoute.name,
          args: UserOrderDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderDetailRoute';

  static const _i37.PageInfo<UserOrderDetailRouteArgs> page =
      _i37.PageInfo<UserOrderDetailRouteArgs>(name);
}

class UserOrderDetailRouteArgs {
  const UserOrderDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i39.Key? key;

  final _i39.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i34.UserOrderPage]
class UserOrderRoute extends _i37.PageRouteInfo<void> {
  const UserOrderRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}

/// generated route for
/// [_i35.UserOrderTrackingDetailPage]
class UserOrderTrackingDetailRoute
    extends _i37.PageRouteInfo<UserOrderTrackingDetailRouteArgs> {
  UserOrderTrackingDetailRoute({
    _i39.Key? key,
    required _i39.OrderDataEntity? order,
    List<_i37.PageRouteInfo>? children,
  }) : super(
          UserOrderTrackingDetailRoute.name,
          args: UserOrderTrackingDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'UserOrderTrackingDetailRoute';

  static const _i37.PageInfo<UserOrderTrackingDetailRouteArgs> page =
      _i37.PageInfo<UserOrderTrackingDetailRouteArgs>(name);
}

class UserOrderTrackingDetailRouteArgs {
  const UserOrderTrackingDetailRouteArgs({
    this.key,
    required this.order,
  });

  final _i39.Key? key;

  final _i39.OrderDataEntity? order;

  @override
  String toString() {
    return 'UserOrderTrackingDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i36.UserRatingViewPage]
class UserRatingViewRoute extends _i37.PageRouteInfo<void> {
  const UserRatingViewRoute({List<_i37.PageRouteInfo>? children})
      : super(
          UserRatingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRatingViewRoute';

  static const _i37.PageInfo<void> page = _i37.PageInfo<void>(name);
}
