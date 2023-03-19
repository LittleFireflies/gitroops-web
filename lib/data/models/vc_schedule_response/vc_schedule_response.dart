import 'package:gita_gitroops/data/models/vc_schedule/vc_schedule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vc_schedule_response.g.dart';

@JsonSerializable()
class VcScheduleResponse {
  final String title;
  final List<VcSchedule> data;

  const VcScheduleResponse({
    required this.title,
    required this.data,
  });

  static VcScheduleResponse fromJson(Map<String, dynamic> json) =>
      _$VcScheduleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VcScheduleResponseToJson(this);
}
