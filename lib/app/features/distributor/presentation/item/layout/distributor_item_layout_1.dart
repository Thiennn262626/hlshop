import 'package:hlshop/all_file/all_file.dart';

class DistributorItemLayout1 extends StatelessWidget {
  const DistributorItemLayout1({
    super.key,
    required this.item,
    this.onPressed,
  });

  static DistributorItemLayout1 demo() {
    return DistributorItemLayout1(
      item: DistributorEntity.demo(),
    );
  }

  final DistributorEntity? item;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: AppDecor.grayBorder(
            context,
          ),
          clipBehavior: Clip.hardEdge,
          child: AppImg(
            item?.img?.src,
          ),
        ).aspectRatio(1).expand(),
        SizedBox(
          height: (context.textS) * 2.6,
          child: item?.name?.text
              .caption(context)
              .medium
              .center
              .maxLines(2)
              .ellipsis
              .make()
              .centered(),
        ),
      ].filterNotNullList(),
    );
  }
}
