import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/src/base_dio.dart';
import '../core/network/dio/src/dio_client.dart';
import 'di_container.dart';

Future<void> registerSingletons() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  /// Singleton register
  getIt.registerFactory<SharedPreferences>(() => sharedPreferences);
  getIt.registerSingleton<BaseDio>(
    DioClient(
      dio: Dio(),
      options: BaseOptions(
        headers: {
          'content-type': Headers.formUrlEncodedContentType,
        },
        baseUrl: restBaseUrl,
      ),
    ),
  );
}
