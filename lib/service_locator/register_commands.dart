import 'package:samh_task_app/app/commands/get_travels_data_impl_command.dart';
import 'package:samh_task_app/app/contracts/travels.dart';

import 'di_container.dart';

void registerCommands()async {
 getIt.registerSingleton<GetTravelsDataBaseCommand>(
    GetTravelsDataImplCommand(travelsBaseRepo: getIt()),
  );
}
