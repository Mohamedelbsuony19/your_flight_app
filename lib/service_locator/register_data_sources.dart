import 'package:samh_task_app/infrastructure/data_sources/abstractions/travels_base_data_source.dart';
import 'package:samh_task_app/infrastructure/data_sources/implementations/travels_impl_data_source.dart';

import 'di_container.dart';

void registerDataSources() {
  getIt.registerSingleton<TravelsBaseDataSource>(
    TravelsImplDataSource(baseDio: getIt()),
  );
}
