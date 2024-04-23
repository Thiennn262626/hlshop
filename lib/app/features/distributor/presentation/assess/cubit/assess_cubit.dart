import 'package:hlshop/all_file/all_file.dart';

part 'assess_cubit.freezed.dart';
part 'assess_state.dart';

class AssessCubit extends Cubit<AssessState> {
  AssessCubit({
    AssessEntity? item,
  }) : super(AssessState(assess: item ?? const AssessEntity()));

  final AssessRepo assessRepo = getIt();

  Future<List<AssessEntity>> fetchListAssess(int offset, int limit) {
    return assessRepo.getAssessList(
      limit: limit,
      offset: offset,
    );
  }
}
