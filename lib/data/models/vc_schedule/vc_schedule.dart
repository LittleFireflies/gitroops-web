import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vc_schedule.g.dart';

@JsonSerializable()
class VcSchedule extends Equatable {
  final String name;
  final String session;
  final String track;
  final String time;
  final bool isSoldOut;
  final String link;

  const VcSchedule({
    required this.name,
    required this.session,
    required this.track,
    required this.time,
    required this.isSoldOut,
    required this.link,
  });

  static VcSchedule fromJson(Map<String, dynamic> json) =>
      _$VcScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$VcScheduleToJson(this);

  @override
  List<Object?> get props => [name, session, track, time, isSoldOut, link];
}
