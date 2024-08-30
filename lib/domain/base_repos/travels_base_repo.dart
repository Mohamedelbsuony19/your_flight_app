import 'package:samh_task_app/domain/entities/travel_entity_response.dart';

import '../../core/utils/typedefs.dart';

abstract class TravelsBaseRepo {
  FutureEitherFailureOrType<TravelEntityResponse> getTravelsData();
}
