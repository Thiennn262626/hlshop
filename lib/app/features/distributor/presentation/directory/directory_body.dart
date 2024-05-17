import 'package:hlshop/all_file/all_file.dart';

class DirectoryBody extends StatelessWidget {
  const DirectoryBody({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PagingList<DirectoryEntity>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const AppDivider.thin().pxDefault().py10(),
            itemBuilder: (context, item, index) => AppTileText.semiBold(
              leading: AppImg(
                item.img,
              ).aspectRatio(1).cornerRadius(Dimens.rad_XS).maxHeight(40),
              title: item.name,
              amount: item.amount,
              onPressed: onPressed ?? () {},
            ),
            fetchListData: context.read<DirectoryCubit>().fetchListDirectory,
          ),
        ],
      ),
    );
  }
}
