import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samh_task_app/presentation/blocs/travel_data/travel_data_bloc.dart';

import 'main.dart';
import 'main_app.dart';
import 'presentation/blocs/app_language/app_language_bloc.dart';
import 'service_locator/di_container.dart';

MultiBlocProvider runSmahApp() {
  return MultiBlocProvider(providers: [
  BlocProvider(
    create: (context) =>
        TravelDataBloc(getIt())..add((const TravelDataEvent.getTravelData())),
  ),
  BlocProvider(
    create: (context) => AppLanguageBloc()..add(AppLanguageGetSavedLocale()),
  ),
], child: const MainApp());
}