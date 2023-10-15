import 'package:flutter/cupertino.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_add_phone_title.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/app_phone_title.dart';

class UserEmailInfoBody extends StatefulWidget {
  const UserEmailInfoBody({super.key});

  @override
  State<UserEmailInfoBody> createState() => _UserEmailInfoBodyState();
}

class _UserEmailInfoBodyState extends State<UserEmailInfoBody> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PagingList<UserEmailEntity>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, item, index) => AppPhoneTile(
              title: item.email,
              onPressed: () {},
              onPressedDelete: () {
                DialogUtils.showMaterialDialog(
                  context: context,
                  content: 'Xóa địa chỉ email?',
                  delete: () {},
                );
              },
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            fetchListData: (page, pageSize) {
              return Future.value(
                List.generate(5, (index) => index)
                    .map((e) => UserEmailEntity.demo())
                    .toList(),
              );
            },
          ),
          Visibility(
            visible: isVisible,
            child: AppAddPhoneTile(
              title: 'Thêm email'.tr(),
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
                  hintText: 'Nhập email',
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
