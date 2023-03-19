// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vc_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VcScheduleResponse _$VcScheduleResponseFromJson(Map<String, dynamic> json) =>
    VcScheduleResponse(
      title: json['title'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => VcSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VcScheduleResponseToJson(VcScheduleResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'data': instance.data,
    };
