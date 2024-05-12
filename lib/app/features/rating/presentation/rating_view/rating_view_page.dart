import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class RatingViewPage extends StatelessWidget {
  const RatingViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RatingViewCubit(),
      child: ApiItemConsumer<RatingViewCubit, RatingViewState>(
        getStatus: (state) => state.status,
        child: const Scaffold(
          appBar: AppAppBar(
              title: 'title',
            ),
          body: RatingViewBody(),
        ),
      ),
    );
  }   

}
