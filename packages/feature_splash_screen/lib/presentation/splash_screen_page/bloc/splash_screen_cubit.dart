import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'splash_screen_state.dart';

@injectable
class SplashScreenCubit extends BaseCubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenInitial());

  @override
  Future initialMethod() async {
    await Future.delayed(const Duration(microseconds: 1000));
    if (true) {
      emit(const GoToDashboard());
    } else {
      emit(const GoToOnboarding());
    }
  }
}
