import 'package:gita_gitroops/data/models/theater_schedule.dart';
import 'package:gita_gitroops/data/models/theater_schedule_response.dart';

class TestModels {
  static const TheaterSchedule theaterSchedule = TheaterSchedule(
    title: 'Gadis Gadis Remaja',
    date: 'Minggu, 5 Juni 2022',
    time: '19:00',
  );

  static const theaterScheduleResponse = TheaterScheduleResponse(
    data: [theaterSchedule],
  );
}
