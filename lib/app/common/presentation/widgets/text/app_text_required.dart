import 'package:hlshop/all_file/all_file.dart';

class AppTextRequired extends StatelessWidget {
  const AppTextRequired({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        child,
        '*'.text.colorError(context).make(),
      ],
    );
  }
}
