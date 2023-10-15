import 'package:flutter/cupertino.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_add_phone_title.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_phone_title.dart';

class UserPhoneInfoBody extends StatefulWidget {
  const UserPhoneInfoBody({super.key});

  @override
  State<UserPhoneInfoBody> createState() => _UserPhoneInfoBodyState();
}

class _UserPhoneInfoBodyState extends State<UserPhoneInfoBody> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PagingList<UserPhoneEntity>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, item, index) => AppPhoneTile(
              title: item.phone,
              onPressed: () {},
              onPressedDelete: () {
                DialogUtils.showMaterialDialog(
                  context: context,
                  content: 'Xóa số điện thoại?',
                  delete: () {},
                );
              },
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.pad_default,
              vertical: Dimens.pad_XS2,
            ),
            separatorBuilder: (context, index) => Gaps.hGap8,
            fetchListData: (page, pageSize) {
              return Future.value(
                List.generate(5, (index) => index)
                    .map((e) => UserPhoneEntity.demo())
                    .toList(),
              );
            },
          ),
          Visibility(
            visible: isVisible,
            child: AppAddPhoneTile(
              title: 'Thêm số điện thoại'.tr(),
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
          ),
          Visibility(
            visible: !isVisible,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nhập số',
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: const Icon(CupertinoIcons.clear_circled_solid),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
