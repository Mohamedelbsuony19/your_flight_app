import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/app_config.dart';
import 'service_locator.dart';

GetIt getIt = GetIt.instance;

SharedPreferences preferences = getIt<SharedPreferences>();
Logger loger = Logger();

final String restBaseUrl = getIt<AppConfig>().restBaseUrl;

class DependencyInjection {
  static Future<void> init() async {
    await registerSingletons();
    registerDataSources();
    registerRepositories();
    registerCommands();
    registerQueries();
    registerFactories();
  }
}
