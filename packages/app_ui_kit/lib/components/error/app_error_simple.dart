import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppErrorSimple extends StatelessWidget {
  const AppErrorSimple({super.key, required this.errorMsg});

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
            size: 60,
          ),
          Gaps.vGap8,
          Text(
            errorMsg,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
