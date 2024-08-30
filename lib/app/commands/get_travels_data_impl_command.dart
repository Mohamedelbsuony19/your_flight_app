import 'package:dartz/dartz.dart';
import 'package:samh_task_app/core/inpusts/no_params.dart';
import 'package:samh_task_app/core/utils/typedefs.dart';
import 'package:samh_task_app/domain/entities/travel_entity_response.dart';

import '../../domain/base_repos/travels_base_repo.dart';
import '../contracts/travels.dart';

class GetTravelsDataImplCommand implements GetTravelsDataBaseCommand {
  final TravelsBaseRepo travelsBaseRepo;

  GetTravelsDataImplCommand({required this.travelsBaseRepo});
  @override
  FutureEitherFailureOrType<TravelEntityResponse> call(NoParams params) async {
    final result = await travelsBaseRepo.getTravelsData();
    return result.fold(
      (l) async {
        return Left(l);
      },
      (r) async {
        return Right(r);
      },
    );
  }
}
