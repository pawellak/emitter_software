import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'about_me_state.dart';

@injectable
class AboutMeCubit extends BaseCubit<AboutMeState> {
  AboutMeCubit() : super(AboutMeInitial());
}
