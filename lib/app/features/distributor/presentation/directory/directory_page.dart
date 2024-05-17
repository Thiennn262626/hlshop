import 'package:hlshop/all_file/all_file.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DirectoryCubit(),
      child: Builder(
        builder: (context) {
          return const DirectoryBody();
        },
      ),
    );
  }
}
