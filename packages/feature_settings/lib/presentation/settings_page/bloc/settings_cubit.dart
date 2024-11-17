import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
}
