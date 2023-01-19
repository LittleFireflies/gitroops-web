import 'package:equatable/equatable.dart';
import 'package:gita_gitroops/data/models/theater_schedule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theater_schedule_response.g.dart';

@JsonSerializable(createToJson: false)
class TheaterScheduleResponse extends Equatable {
  final List<TheaterSchedule> data;

  const TheaterScheduleResponse({
    required this.data,
  });

  static TheaterScheduleResponse fromJson(Map<String, dynamic> json) =>
      _$TheaterScheduleResponseFromJson(json);

  @override
  List<Object?> get props => [data];
}
