import 'package:{{{pathPackage}}}/all_file/all_file.dart';

final {{feature_name.camelCase()}}Routes = [
    AutoRoute(
      path: '/{{feature_name.snakeCase()}}',
      page: {{feature_name.pascalCase()}}Route.page,
    )
];