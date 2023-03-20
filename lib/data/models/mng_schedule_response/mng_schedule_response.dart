import 'package:equatable/equatable.dart';
import 'package:gita_gitroops/data/models/vc_schedule/vc_schedule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mng_schedule_response.g.dart';

@JsonSerializable()
class MngScheduleResponse extends Equatable {
  final String title;
  final MngData data;

  const MngScheduleResponse({
    required this.title,
    required this.data,
  });

  static MngScheduleResponse fromJson(Map<String, dynamic> json) =>
      _$MngScheduleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MngScheduleResponseToJson(this);

  @override
  List<Object?> get props => [title, data];

}

@JsonSerializable()
class MngData extends Equatable {
  final List<VcSchedule> mng;
  @JsonKey(name: '2s')
  final List<VcSchedule> twoShot;

  const MngData({
    required this.mng,
    required this.twoShot,
  });

  static MngData fromJson(Map<String, dynamic> json) => _$MngDataFromJson(json);

  Map<String, dynamic> toJson() => _$MngDataToJson(this);

  @override
  List<Object?> get props => [mng, twoShot];
}
