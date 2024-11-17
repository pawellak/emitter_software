import 'package:bloc/bloc.dart';
import 'package:core/presentation/base_state.dart';

abstract class BaseCubit<T extends BaseState> extends Cubit<T> {
  BaseCubit(super.initialState);

  Future initialMethod() async {}

  Future initialParams(dynamic args) async {}

  void dispose() {}

  @override
  Future<void> close() async {
    dispose();
    super.close();
  }
}
