import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'multimedia_state.dart';

@injectable
class MultimediaCubit extends BaseCubit<MultimediaState> {
  MultimediaCubit() : super(MultimediaInitial());
}
