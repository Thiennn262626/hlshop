import 'package:hlshop/all_file/all_file.dart';

class AssessPage extends StatelessWidget {
  const AssessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AssessCubit(),
      child: Builder(
        builder: (context) {
          return const AssessBody();
        },
      ),
    );
  }
}
