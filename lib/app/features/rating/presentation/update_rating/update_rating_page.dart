import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UpdateRatingPage extends StatelessWidget {
  const UpdateRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateRatingCubit(),
      child: ApiItemConsumer<UpdateRatingCubit, UpdateRatingState>(
        getStatus: (state) => state.status,
        child: const Scaffold(
          appBar: AppAppBar(
              title: 'title',
            ),
          body: UpdateRatingBody(),
        ),
      ),
    );
  }   

}
