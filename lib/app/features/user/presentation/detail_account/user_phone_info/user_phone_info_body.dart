import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_add_phone_title.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_phone_title.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/user_info_value_section.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserPhoneInfoBody extends StatelessWidget {
  const UserPhoneInfoBody({super.key});

  UserRepo get userRepo => getIt<UserRepo>();

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              final phoneList = state.userEntity?.phoneList;
              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: phoneList?.length ?? 0,
                itemBuilder: (context, index) {
                  final phone = phoneList.getOrNull(index);
                  return AppPhoneTile(
                    title: phone?.phone ?? '',
                    onPressed: () {},
                    onPressedDelete: () {
                      DialogUtils.showMaterialDialog(
                        context: context,
                        content: 'Xóa số điện thoại?',
                        delete: () {},
                      );
                    },
                  );
                },
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.pad_default,
                  vertical: Dimens.pad_XS2,
                ),
                separatorBuilder: (context, index) => Gaps.divider.py2(),
              );
            },
          ),
          Gaps.divider.px8(),
          AppAddPhoneTile(
            title: 'Thêm số điện thoại'.tr(),
            onPressed: () async {
              final rs = await BottomSheetUtils.showMaterial(
                context: context,
                isScrollControlled: false,
                child: const UserInfoValueSection(
                  keyboardType: TextInputType.phone,
                ),
              );
              if (rs is String && rs.isNotEmpty) {
                _addPhone(
                  context: context,
                  phone: rs,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Future<void> _addPhone({
    required BuildContext context,
    required String phone,
  }) async {
    final userBloc = context.read<UserBloc>();
    final requestOtpResult = await userRepo.addPhone(
      phone: phone,
    );
    final verifyResult = await getIt<AppAutoRoute>().push(
      OtpConfirmRoute(
        requestOtpResult: requestOtpResult,
        successMessage: 'Thêm số điện thoại thành công'.tr(),
        otpMessage: 'Mã OTP đã được gửi đến Email {}'.tr(
          args: [
            phone,
          ],
        ),
        confirmOTPFunc: (otpUserInput, requestOtpResult) async {
          final rs = await userRepo.verifyPhone(
            otp: otpUserInput,
            addResultObject: requestOtpResult,
          );
          return Future.value(true);
        },
        onResendOTP: (requestOtpResult) async {
          final rs = await userRepo.resendOtp(
            addResultObject: requestOtpResult,
          );
          return Future.value(rs);
        },
      ),
    );
    if (verifyResult == true) {
      userBloc.add(
        const UserEvent.fetch(),
      );
    }
    return Future.value();
  }
}
