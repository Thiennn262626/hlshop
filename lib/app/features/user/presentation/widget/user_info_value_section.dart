import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/widget/user_edit_bottom_bar.dart';

class UserInfoValueSection extends StatefulWidget {
  const UserInfoValueSection({
    super.key,
    this.initialValue,
    this.keyboardType,
  });

  final String? initialValue;
  final TextInputType? keyboardType;

  @override
  State<UserInfoValueSection> createState() => _UserInfoValueSectionState();
}

class _UserInfoValueSectionState extends State<UserInfoValueSection> {
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.text = widget.initialValue ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap24,
          AppTextField(
            autoFocus: true,
            enableClearButton: true,
            keyboardType: widget.keyboardType,
            controller: _textEditingController,
            decoration: InputDecoration(
              hintText: 'Nhập thông tin'.tr(),
            ),
          ),
          Gaps.vGap16,
          UserEditBottomBar(
            onConfirm: () {
              context.pop(_textEditingController.text);
            },
          ),
          Gaps.vGap16,
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          ),
        ],
      ).pxDefault(),
    );
  }
}
