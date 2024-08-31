import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:samh_task_app/core/constants/end_points.dart';
import 'package:samh_task_app/core/network/dio/src/base_dio.dart';
import 'package:samh_task_app/infrastructure/data_sources/abstractions/travels_base_data_source.dart';
import 'package:samh_task_app/infrastructure/data_sources/implementations/travels_impl_data_source.dart';

import 'flight_ticket_widget_test.mocks.dart';

@GenerateMocks([BaseDio])
void main() {
  late TravelsBaseDataSource travelsImplDataSource;
  late MockBaseDio mockBaseDio;

  setUp(() {
    mockBaseDio = MockBaseDio();
    travelsImplDataSource = TravelsImplDataSource(baseDio: mockBaseDio);
  });

  group('getTravelsData', () {
    final mockResponseData = {
      "cities": ["Riyadh", "Jeddah"],
      "ticketClasses": ["Economy", "Business"],
      "tripType": ["One-way", "Round-trip"],
      "trips": []
    };

    test('should return data when the call to BaseDio is successful', () async {
      // Arrange
      when(mockBaseDio.get(EndPoints.baseUrl)).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: EndPoints.baseUrl),
          data: mockResponseData,
          statusCode: 200,
        ),
      );

      // Act
      final result = await travelsImplDataSource.getTravelsData();

      // Assert
      expect(result, mockResponseData);
      verify(mockBaseDio.get(EndPoints.baseUrl));
      verifyNoMoreInteractions(mockBaseDio);
    });

    test('should throw an exception when the call to BaseDio fails', () async {
      // Arrange
      when(mockBaseDio.get(EndPoints.baseUrl))
          .thenThrow(Exception('Failed to fetch data'));

      // Act
      final call = travelsImplDataSource.getTravelsData;

      // Assert
      expect(() => call(), throwsA(isA<Exception>()));
      verify(mockBaseDio.get(EndPoints.baseUrl));
      verifyNoMoreInteractions(mockBaseDio);
    });
  });
}
