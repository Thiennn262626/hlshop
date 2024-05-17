import 'package:hlshop/all_file/all_file.dart';

class MSDirectoryRepo extends DirectoryRepo {
  @override
  Future<List<DirectoryEntity>> getDirectoryList({
    int? limit,
    int? offset,
  }) async {
    return Future.value(
      List.generate(5, (index) => index)
          .map((e) => DirectoryEntity.demo())
          .toList(),
    );
  }
}
