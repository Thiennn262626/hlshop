import 'package:hlshop/all_file/all_file.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return AppScrollBody(
          child: ContainerLimitedHoz(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: constrains.maxHeight * 0.03,
                ),
                Assets.icons.app.appLogoNameSvg.svg().objectCenter(),
                SizedBox(
                  height: constrains.maxHeight * 0.04,
                ),
                child,
              ],
            ).px22(),
          ).objectCenter(),
        );
      },
    );
  }
}
