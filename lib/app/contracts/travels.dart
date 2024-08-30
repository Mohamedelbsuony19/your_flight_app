import 'package:samh_task_app/domain/entities/travel_entity_response.dart';

import '../../core/inpusts/no_params.dart';
import '../../core/utils/typedefs.dart';
import '../core/base_types/src/base_query.dart';

abstract class GetTravelsDataBaseCommand extends BaseQuery<
    FutureEitherFailureOrType<TravelEntityResponse>, NoParams> {}
