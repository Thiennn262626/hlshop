import 'package:hlshop/all_file/all_file.dart';

part 'directory_cubit.freezed.dart';
part 'directory_state.dart';

class DirectoryCubit extends Cubit<DirectoryState> {
  DirectoryCubit({
    DirectoryEntity? item,
  }) : super(DirectoryState(directory: item ?? const DirectoryEntity()));

  final DirectoryRepo directoryRepo = getIt();

  Future<List<DirectoryEntity>> fetchListDirectory(int offset, int limit) {
    return directoryRepo.getDirectoryList(
      limit: limit,
      offset: offset,
    );
  }
}
