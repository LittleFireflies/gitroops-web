import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theater_schedule.g.dart';

@JsonSerializable()
class TheaterSchedule extends Equatable {
  final String title;
  final String date;
  final String time;

  const TheaterSchedule({
    required this.title,
    required this.date,
    required this.time,
  });

  static TheaterSchedule fromJson(Map<String, dynamic> json) =>
      _$TheaterScheduleFromJson(json);

  @override
  List<Object?> get props => [
        title,
        date,
        time,
      ];
}
