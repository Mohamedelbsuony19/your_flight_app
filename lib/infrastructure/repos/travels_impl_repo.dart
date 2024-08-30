import 'package:dartz/dartz.dart';
import 'package:samh_task_app/core/utils/typedefs.dart';
import 'package:samh_task_app/domain/base_repos/travels_base_repo.dart';
import 'package:samh_task_app/domain/entities/travel_entity_response.dart';
import 'package:samh_task_app/infrastructure/data_sources/abstractions/travels_base_data_source.dart';

import '../../core/network/failure.dart';

class TravelsImplRepo implements TravelsBaseRepo {
  final TravelsBaseDataSource _travelsBaseDataSource;

  TravelsImplRepo({required TravelsBaseDataSource travelsBaseDataSource})
      : _travelsBaseDataSource = travelsBaseDataSource;
  @override
  FutureEitherFailureOrType<TravelEntityResponse> getTravelsData() async {
    try {
      final response = await _travelsBaseDataSource.getTravelsData();
      return Right(TravelEntityResponse.fromJson(response));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
