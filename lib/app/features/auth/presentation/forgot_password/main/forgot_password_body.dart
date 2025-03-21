import 'package:hlshop/all_file/all_file.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gaps.vGap32,
          LocaleKeys.authen_ForgotPasswordOTPMsg
              .tr(
                args: [
                  RegisterType.values
                      .mapAsList((item) => item.enumTranslate())
                      .join('/')
                ],
              )
              .text
              .titleMedium(context)
              .center
              .make()
              .px22(),
          Gaps.vGap32,
          const AuthIdInput(),
          Gaps.vGap42,
        ],
      ).pxDefault(),
    );
  }
}
