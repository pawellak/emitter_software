import 'package:core/core_exports.dart';
import 'package:emitter_software/core/di/get_it.config.dart';

@InjectableInit()
Future<void> configureDependencies(String environment) async => getIt.init(environment: environment);
