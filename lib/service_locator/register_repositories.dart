import 'package:samh_task_app/domain/base_repos/travels_base_repo.dart';
import 'package:samh_task_app/infrastructure/repos/travels_impl_repo.dart';

import 'di_container.dart';

void registerRepositories() {
  getIt.registerSingleton<TravelsBaseRepo>(TravelsImplRepo(
    travelsBaseDataSource: getIt(),
  ));
}
