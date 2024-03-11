import 'package:hlshop/all_file/all_file.dart';

class UserEmailInfoBody extends StatelessWidget {
  const UserEmailInfoBody({super.key});

  UserRepo get userRepo => getIt<UserRepo>();

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocSelector<UserBloc, UserState, List<UserEmailEntity>?>(
        selector: (state) => state.userEntity?.emailList,
        builder: (context, emailList) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (emailList?.isNotNullOrEmpty ?? false)
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: emailList?.length ?? 0,
                  itemBuilder: (context, index) {
                    final email = emailList.getOrNull(index);
                    if (email == null) {
                      return const SizedBox.shrink();
                    }
                    return UserInfoTile(
                      title: email.emailAddress ?? '',
                      onPressedDelete: () {
                        DialogUtils.showMaterialDialog(
                          context: context,
                          content: 'Xóa Email?'.tr(),
                          delete: () {
                            context.read<UserBloc>().add(
                                  UserEvent.deleteEmail(
                                    email: email,
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
              if (emailList?.isNotNullOrEmpty ?? false) Gaps.divider.px8(),
              AppAddInfoTile(
                title: 'Thêm email'.tr(),
                onPressed: () {
                  _addEmail(context: context);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _addEmail({
    required BuildContext context,
  }) async {
    final userBloc = context.read<UserBloc>();
    final emailNumber = await BottomSheetUtils.showMaterial(
      context: context,
      isScrollControlled: false,
      child: const UserInfoValueSection(
        keyboardType: TextInputType.emailAddress,
      ),
    );

    final bool = emailNumber is! String || emailNumber.isEmpty;
    if (bool) {
      return;
    }

    Object requestOtpResult;
    try {
      requestOtpResult = await userRepo.addEmail(
        email: emailNumber,
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
        successMessage: 'Thêm Email thành công'.tr(),
        otpMessage: 'Mã OTP đã được gửi đến Email {}'.tr(
          args: [
            emailNumber,
          ],
        ),
        confirmOTPFunc: (otpUserInput, requestOtpResult) async {
          final rs = await userRepo.verifyEmail(
            otp: otpUserInput,
            addResultObject: requestOtpResult,
          );
          return Future.value(true);
        },
        onResendOTP: (requestOtpResult) async {
          final rs = await userRepo.resendEmailOtp(
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
