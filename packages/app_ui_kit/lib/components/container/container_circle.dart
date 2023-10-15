import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class ContainerCircle extends StatelessWidget {
  const ContainerCircle({Key? key, required this.color, required this.size, this.border, this.child}) : super(key: key);

  final Color color;
  final double size;
  final BoxBorder? border;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle, border: border),
      child: child,
    );
  }
}
