import 'package:core/core_exports.dart';


final getIt = GetIt.I;

@module
abstract class CorePackage {
  Logger get logger => Logger();

  @preResolve
  Future<SharedPreferences> prefs() => SharedPreferences.getInstance();
}

@InjectableInit.microPackage()
void initCorePackage() {}
