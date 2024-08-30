import 'package:flutter/material.dart';
import 'package:samh_task_app/core/constants/end_points.dart';

import 'core/utils/app_config.dart';
import 'providers.dart';
import 'service_locator/di_container.dart';

const String baseUrl = EndPoints.baseUrl;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<AppConfig>(
    AppConfig(
      restBaseUrl: baseUrl,
      appName: "samh_task_app",
    ),
  );
  await DependencyInjection.init();
  runApp(runSmahApp());
}
