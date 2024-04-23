import 'package:hlshop/all_file/all_file.dart';

class MSAssessRepo extends AssessRepo {
  @override
  Future<List<AssessEntity>> getAssessList({
    int? limit,
    int? offset,
  }) async {
    return Future.value(
      List.generate(5, (index) => index)
          .map((e) => AssessEntity.demo())
          .toList(),
    );
  }
}
