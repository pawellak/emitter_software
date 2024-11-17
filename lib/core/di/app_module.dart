// import 'package:core/config/app_config.dart';
// import 'package:core/config/dio_clients.dart';
// import 'package:core/core_exports.dart' show Dio, Named, ResponseType, lazySingleton, module, singleton;
// import 'package:emitter_software/core/navigation/main_router.dart';
// import 'package:enea_mobile_gui/core/navigation/main_router.dart';
// import 'package:enea_mobile_gui/core/network/interceptors/auth_interceptor.dart';
// import 'package:enea_mobile_gui/core/network/interceptors/error_cms_interceptor.dart';
// import 'package:enea_mobile_gui/core/network/interceptors/error_download_interceptor.dart';
// import 'package:enea_mobile_gui/core/network/interceptors/error_handling_interceptor.dart';
// import 'package:enea_mobile_gui/core/network/interceptors/error_translation_interceptor.dart';
//
// const _timeOutDurationInSec = 30;
// const _timeOutDurationTranslationsInSec = 10;
// const _timeOutDurationCmsInSec = 10;
//
// @module
// abstract class AppModule {
//   const AppModule();
//
//   @singleton
//   MainRouter get mainRouter => const MainRouter();
//
//   @Named(DioClients.clientApi)
//   @lazySingleton
//   Dio dio(AppConfig config) => Dio()
//     ..options.baseUrl = config.baseUrl
//     ..options.contentType = 'application/json; charset=utf-8'
//     ..options.receiveTimeout = (const Duration(seconds: _timeOutDurationInSec))
//     ..interceptors.addAll({
//       const AuthInterceptor(),
//       const ErrorHandlingInterceptor(),
//     });
//
//   @Named(DioClients.multiFile)
//   @lazySingleton
//   Dio dioMultiFile(AppConfig config) => Dio()
//     ..options.baseUrl = config.baseUrl
//     ..options.contentType = 'multipart/form-data; boundary=WebAppBoundary'
//     ..interceptors.addAll({const AuthInterceptor(), const ErrorHandlingInterceptor()});
//
//   @Named(DioClients.download)
//   @lazySingleton
//   Dio dioDownload() => Dio()
//     ..options.responseType = ResponseType.bytes
//     ..interceptors.addAll({const AuthInterceptor(), const ErrorDownloadInterceptor()});
//
//   @Named(DioClients.clientCms)
//   @lazySingleton
//   Dio dioCms(AppConfig config) => Dio()
//     ..options.baseUrl = config.baseUrl
//     ..options.contentType = 'application/json; charset=utf-8'
//     ..options.receiveTimeout = (const Duration(seconds: _timeOutDurationCmsInSec))
//     ..interceptors.addAll({
//       const ErrorCmsInterceptor(),
//       // CertificatePinningInterceptor(allowedSHAFingerprints: ['RPWo74uVkmfz8P2s5ozoV3MzzueMoT+GoVJVJJTP/d0='])
//     });
//
//   @Named(DioClients.clientTranslations)
//   @lazySingleton
//   Dio dioTranslations(AppConfig config) => Dio()
//     ..options.baseUrl = config.baseUrl
//     ..options.contentType = 'application/json; charset=utf-8'
//     ..options.responseType = ResponseType.plain
//     ..options.receiveTimeout = (const Duration(seconds: _timeOutDurationTranslationsInSec))
//     ..interceptors.addAll({
//       const ErrorTranslationInterceptor(),
//       // CertificatePinningInterceptor(allowedSHAFingerprints: ['RPWo74uVkmfz8P2s5ozoV3MzzueMoT+GoVJVJJTP/d0=']),
//     });
// }
