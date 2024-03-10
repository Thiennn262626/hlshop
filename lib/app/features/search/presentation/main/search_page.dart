import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<SearchCubit, SearchState>(
          listener: _onStateChanged,
          child: const Scaffold(
            appBar: AppAppBar(
              title: 'title',
            ),
            body: SearchBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, SearchState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
