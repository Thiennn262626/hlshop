import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/about/presentation/main/about_body.dart';
import 'package:hlshop/app/features/about/presentation/main/cubit/about_cubit.dart';

@RoutePage()
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutCubit(),
      child: DefaultStatusConsumer<AboutCubit, AboutState>(
        child: Scaffold(
          appBar: AppAppBar(
            title: 'title',
          ),
          body: AboutBody(),
        ),
      ),
    );
  }

  void _onStateChanged(BuildContext context, AboutState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showMaterialDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutCubit, AboutState>(
      builder: (context, state) {
        // if (state.status == ItemDefaultStatus.error) {
        //   return SimpleErrorText(error: state.error ?? '');
        // }
        final isLoading = state.status == ItemStatus.loading ||
            state.status == ItemStatus.initial;

        return child;
      },
    );
  }
}
