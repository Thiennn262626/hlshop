import 'package:hlshop/all_file/all_file.dart';

abstract class AssessRepo {
  Future<List<AssessEntity>> getAssessList({
    int? limit,
    int? offset,
  });
}
