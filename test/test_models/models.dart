import 'package:gita_gitroops/data/models/stats_response.dart';
import 'package:gita_gitroops/data/models/theater_schedule.dart';
import 'package:gita_gitroops/data/models/theater_schedule_response.dart';

class TestModels {
  static const TheaterSchedule theaterSchedule = TheaterSchedule(
      title: 'Gadis Gadis Remaja',
      date: 'Minggu, 5 Juni 2022',
      time: '19:00',
      link: 'https://jkt48.com/ticket/apply/id/2395/type/2');

  static const theaterScheduleResponse = TheaterScheduleResponse(
    data: [theaterSchedule],
  );

  static const statsResponse = StatsResponse(
    shows: 185,
    setlists: 8,
    unitSongs: 12,
  );
}
