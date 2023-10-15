import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/image/app_img.dart';

class BorderImgView extends StatelessWidget {
  const BorderImgView(
    this.src, {
    super.key,
    this.fit,
  });

  final dynamic? src;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecor.cardGrayBorder(
        context,
        color: Colors.grey,
        borderRadius: Dimens.rad_border_circular,
        borderWidth: 0.5,
      ),
      child: AppImg(
        src,
        fit: fit ?? BoxFit.fitWidth,
      ).cornerRadius(Dimens.rad),
    );
  }
}
