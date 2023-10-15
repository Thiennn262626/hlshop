import 'package:{{{pathPackage}}}/all_file/all_file.dart';
{{#isBloc}}import 'package:{{{fullPath}}}/bloc/{{feature_name.snakeCase()}}_bloc.dart';{{/isBloc}}{{#isCubit}}import 'package:{{{fullPath}}}/cubit/{{feature_name.snakeCase()}}_cubit.dart';{{/isCubit}}

class {{feature_name.pascalCase()}}Body {{#isBloc}}extends StatelessWidget{{/isBloc}}{{#isCubit}}extends StatelessWidget{{/isCubit}}{{#isProvider}}extends StatelessWidget{{/isProvider}}{{#isNone}}extends StatelessWidget{{/isNone}} {
  const {{feature_name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        children: [

        ],
      ),
    );
  }
}
