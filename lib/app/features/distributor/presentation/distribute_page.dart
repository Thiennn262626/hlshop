import 'package:app_ui_kit/components/container/blend_bottom.dart';
import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class DistributePage extends StatelessWidget {
  const DistributePage({super.key});

  @override
  Widget build(BuildContext context) {
    final onPrimaryColor = context.theme.copyWith(
      iconTheme: context.theme.iconTheme.copyWith(
        color: context.theme.onPrimary(),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(context.theme.onPrimary()),
        ),
      ),
      hintColor: context.theme.onPrimary(),
      textTheme: context.theme.textTheme.apply(
        bodyColor: context.theme.onPrimary(),
        displayColor: context.theme.onPrimary(),
      ),
    );
    final ratio = MediaQuery.sizeOf(context).width / 2 - 20;
    return Scaffold(
      appBar: AppAppBar(
        height: ratio,
        args: AppBarArgs(
          leading: const SizedBox.shrink(),
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              BlendBottom(
                child: const AppImg(
                  'https://img.freepik.com/free-photo/medicine-capsules-global-health-with-geometric-pattern-digital-remix_53876-126742.jpg?w=1480&t=st=1696658769~exp=1696659369~hmac=e5f8559fa6ccabbafcf8bf6fc0939e71ef3d14db777bb791d7814daa08402595',
                  fit: BoxFit.cover,
                ).aspectRatio(2),
              ),
              SafeArea(
                bottom: false,
                child: Theme(
                  data: onPrimaryColor,
                  child: Column(
                    children: [
                      const DistributorSearch(),
                      const DistributeInformation()
                          .centered()
                          .pxDefault()
                          .expand(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: const DistributorBody(),
    );
  }
}
