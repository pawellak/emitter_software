part of 'splash_screen_cubit.dart';

sealed class SplashScreenState extends BaseState {
  const SplashScreenState();
}

class SplashScreenInitial extends SplashScreenState {
  const SplashScreenInitial();
}

class GoToDashboard extends SplashScreenState {
  const GoToDashboard();
}

class GoToOnboarding extends SplashScreenState {
  const GoToOnboarding();
}
