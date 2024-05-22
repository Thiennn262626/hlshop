import 'package:hlshop/all_file/all_file.dart';

class DistributeInformation extends StatelessWidget {
  const DistributeInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Row(
        children: [
          const AppImg(
            'https://bizweb.dktcdn.net/100/433/790/products/tra-xanh-c2-huong-chanh-chai-455ml.jpg?v=1629476214367',
            fit: BoxFit.cover,
          ).cornerRadius(30).maxHeight(60),
          Gaps.hGap8,
          'HL SHOP'
              .text
              .caption(context)
              .bold
              .maxLines(2)
              .ellipsis
              .make(),
        ],
      ),
    );
  }
}
