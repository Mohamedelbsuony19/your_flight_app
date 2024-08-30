import 'package:samh_task_app/presentation/blocs/app_language/app_language.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';

import 'di_container.dart';

void registerFactories() {
  getIt.registerFactory<TravelDataBloc>(
    () => TravelDataBloc(getIt()),
  );
  getIt.registerFactory<AppLanguageBloc>(
    () => AppLanguageBloc(),
  );
}
