import 'package:hlshop/all_file/all_file.dart';

class DistributeInformation extends StatelessWidget {
  const DistributeInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppImg(
            'https://bizweb.dktcdn.net/100/433/790/products/tra-xanh-c2-huong-chanh-chai-455ml.jpg?v=1629476214367',
            fit: BoxFit.cover,
          ).cornerRadius(30).maxHeight(60),
          Gaps.hGap8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Công ty cổ phần Dược pẩm mỹ nghệ HCM'
                  .text
                  .caption(context)
                  .bold
                  .maxLines(2)
                  .ellipsis
                  .make(),
              'Online 6 phút trước'.text.bodySmall(context).ellipsis.make(),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 15,
                  ),
                  '4,2/5.0'.text.bodySmall(context).ellipsis.make(),
                  ' | '.text.bodySmall(context).ellipsis.make(),
                  Assets.icons.app.personFollow.svg(),
                  Gaps.hGap4,
                  '120k'.text.bodySmall(context).ellipsis.make(),
                ],
              ),
            ].withDivider(Gaps.vGap4),
          ).expand(),
          AppButton(
            label: 'Theo dõi'.tr(),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
