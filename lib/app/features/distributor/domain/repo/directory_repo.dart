import 'package:hlshop/all_file/all_file.dart';

abstract class DirectoryRepo {
  Future<List<DirectoryEntity>> getDirectoryList({
    int? limit,
    int? offset,
  });
}
