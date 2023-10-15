import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class BlendBottom extends StatelessWidget {
  final Widget child;

  const BlendBottom({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter, colors: [
          Colors.transparent,
          Color(0x40000000),
          Color(0xCC000000),
        ], stops: [
          0.0,
          0.5,
          1.0
        ]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.darken,
      child: child,
    );
  }
}
