import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/user_info_value_section.dart';
import 'package:hlshop/app/features/user/presentation/widget/app_add_info_title.dart';
import 'package:hlshop/app/features/user/presentation/widget/user_info_title.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserPhoneInfoBody extends StatelessWidget {
  const UserPhoneInfoBody({super.key});

  UserRepo get userRepo => getIt<UserRepo>();

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocSelector<UserBloc, UserState, List<UserPhoneEntity>?>(
        selector: (state) => state.userEntity?.phoneList,
        builder: (context, phoneList) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (phoneList?.isNotNullOrEmpty ?? false)
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: phoneList?.length ?? 0,
                  itemBuilder: (context, index) {
                    final phone = phoneList.getOrNull(index);
                    if (phone == null) {
                      return const SizedBox.shrink();
                    }
                    return UserInfoTile(
                      title: phone.phone ?? '',
                      onEditPressed: () {
                        _updatePhone(
                          context: context,
                          phone: phone,
                        );
                      },
                      onPressedDelete: () {
                        DialogUtils.showMaterialDialog(
                          context: context,
                          content: 'Xóa số điện thoại?',
                          delete: () {
                            context.read<UserBloc>().add(
                                  UserEvent.deletePhone(
                                    phone: phone,
                                  ),
                                );
                          },
                        );
                      },
                    );
                  },
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.pad_default,
                    vertical: Dimens.pad_XS2,
                  ),
                  separatorBuilder: (context, index) => Gaps.divider.py2(),
                ),
              if (phoneList?.isNotNullOrEmpty ?? false) Gaps.divider.px8(),
              AppAddInfoTile(
                title: 'Thêm số điện thoại'.tr(),
                onPressed: () {
                  _addPhone(context: context);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _addPhone({
    required BuildContext context,
  }) async {
    final userBloc = context.read<UserBloc>();
    final phoneNumber = await BottomSheetUtils.showMaterial(
      context: context,
      isScrollControlled: false,
      child: const UserInfoValueSection(
        keyboardType: TextInputType.phone,
      ),
    );

    final bool = phoneNumber is! String || phoneNumber.isEmpty;
    if (bool) {
      return;
    }

    Object requestOtpResult;
    try {
      requestOtpResult = await userRepo.addPhone(
        phone: phoneNumber,
      );
    } catch (e) {
      await DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(e),
        error: e,
      );
      return;
    }
    final verifyResult = await getIt<AppAutoRoute>().push(
      OtpConfirmRoute(
        requestOtpResult: requestOtpResult,
        successMessage: 'Thêm số điện thoại thành công'.tr(),
        otpMessage: 'Mã OTP đã được gửi đến số điện thoại {}'.tr(
          args: [
            phoneNumber,
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
          final rs = await userRepo.resendPhoneOtp(
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

  Future<void> _updatePhone({
    required BuildContext context,
    required UserPhoneEntity phone,
  }) async {
    final userBloc = context.read<UserBloc>();
    // TODO: expect return phone entity
    final phoneNumber = await BottomSheetUtils.showMaterial(
      context: context,
      isScrollControlled: false,
      child: UserInfoValueSection(
        keyboardType: TextInputType.phone,
        initialValue: phone.phone,
      ),
    );
  }
}
