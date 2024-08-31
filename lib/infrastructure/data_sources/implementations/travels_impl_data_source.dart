import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:samh_task_app/core/constants/assets.dart';

import '../abstractions/travels_base_data_source.dart';

class TravelsImplDataSource implements TravelsBaseDataSource {
  TravelsImplDataSource();

  @override
  Future<Map<String, dynamic>> getTravelsData() async {
    try {
      // Load the JSON file as a string
      final jsonString =
          await rootBundle.loadString(Assets.jsonData);
      // Decode the JSON string into a Map
      final jsonData = json.decode(jsonString) as Map<String, dynamic>;
      return jsonData;
    } catch (e) {
      rethrow;
    }
  }
}
