import 'package:samh_task_app/core/constants/end_points.dart';

import '../../../core/network/dio/src/base_dio.dart';
import '../abstractions/travels_base_data_source.dart';

class TravelsImplDataSource implements TravelsBaseDataSource {
  final BaseDio _baseDio;

  TravelsImplDataSource({required BaseDio baseDio}) : _baseDio = baseDio;
  @override
  Future<Map<String, dynamic>> getTravelsData() async {
    try {
      final response = await _baseDio.get(EndPoints.baseUrl);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
