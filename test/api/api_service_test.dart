import 'package:flutter_test/flutter_test.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/data/models/theater_schedule_response/theater_schedule_response.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

import '../json_reader.dart';
import '../test_models/models.dart';

class MockHttpClient extends Mock implements Client {}

void main() {
  late Client client;
  late ApiService apiService;

  setUp(() {
    client = MockHttpClient();
    apiService = ApiService(client);
  });

  test(
    'return theater schedule response '
    'when status code is 200',
    () async {
      when(() => client.get(Uri.parse(
              'https://48-api-dot-my-playground-230006.el.r.appspot.com/schedule/theater')))
          .thenAnswer(
        (_) async => Response(
          readJson('test_models/theater_schedule.json'),
          200,
        ),
      );
      const TheaterScheduleResponse response =
          TestModels.theaterScheduleResponse;

      final result = await apiService.getTheaterSchedule();
      expect(result, response);
    },
  );

  test(
    'should return stats response '
    'when status code is 200',
    () async {
      when(() => client.get(Uri.parse(
              'https://48-api-dot-my-playground-230006.el.r.appspot.com/gita-stats')))
          .thenAnswer(
        (_) async => Response(
          readJson('test_models/gita_stats.json'),
          200,
        ),
      );
      const response = TestModels.statsResponse;

      final result = await apiService.getGitaStats();
      expect(result, response);
    },
  );
}
