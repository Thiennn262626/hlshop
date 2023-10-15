import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/search/presentation/main/cubit/search_cubit.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          final item = state.item;
          return Column(
            children: [],
          );
        },
      ),
    );
  }
}
