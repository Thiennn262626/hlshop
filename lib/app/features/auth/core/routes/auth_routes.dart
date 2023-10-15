import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart';
import 'package:hlshop/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart';
import 'package:hlshop/app/features/auth/presentation/login/login_page.dart';
import 'package:hlshop/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart';
import 'package:hlshop/app/features/auth/presentation/sign_up/sign_up_page.dart';

final authRoutes = [
  AutoRoute(path: '/sign-up', page: SignUpRoute.page),
  AutoRoute(path: '/login', page: LoginRoute.page),
  AutoRoute(path: '/otp-confirm', page: AuthOtpConfirmRoute.page),
  AutoRoute(path: '/forgot-password', page: ForgotPasswordRoute.page),
  AutoRoute(path: '/change-password', page: ChangePasswordRoute.page),
];
