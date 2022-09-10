import 'dart:convert';

import 'package:gita_gitroops/data/models/stats_response.dart';
import 'package:gita_gitroops/data/models/theater_schedule_response.dart';
import 'package:http/http.dart';

class ApiService {
  final Client client;

  const ApiService(this.client);

  Future<TheaterScheduleResponse> getTheaterSchedule() async {
    final response = await client.get(Uri.parse(
        'https://48-api-dot-my-playground-230006.el.r.appspot.com/schedule/theater'));
    final theaterSchedule =
        TheaterScheduleResponse.fromJson(json.decode(response.body));

    return theaterSchedule;
  }

  Future<StatsResponse> getGitaStats() async {
    final response = await client.get(Uri.parse(
        'https://48-api-dot-my-playground-230006.el.r.appspot.com/gita-stats'));

    final stats = StatsResponse.fromJson(json.decode(response.body));

    return stats;
  }
}
