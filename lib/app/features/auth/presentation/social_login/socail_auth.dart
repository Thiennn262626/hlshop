import 'package:hlshop/all_file/all_file.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.minRowHeight_XS2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButton(
            style: AppButtonTheme.circleGreyIcon(context),
            onPressed: () {},
            child: Assets.icons.common.google.svg(),
          ),
          AppButton(
            style: AppButtonTheme.circleGreyIcon(context),
            onPressed: () {},
            child: Assets.icons.common.apple.svg(),
          ),
          AppButton(
            style: AppButtonTheme.circleGreyIcon(context),
            onPressed: () {},
            child: const Icon(
              FontAwesomeIcons.facebookF,
              color: Color(0xFF226DFF),
            ),
          ),
        ].withDivider(Gaps.hGap16),
      ),
    );
  }
}
