import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'splash_screen_state.dart';

@injectable
class SplashScreenCubit extends BaseCubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial());
}
