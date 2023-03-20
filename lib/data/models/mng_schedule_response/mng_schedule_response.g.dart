// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mng_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MngScheduleResponse _$MngScheduleResponseFromJson(Map<String, dynamic> json) =>
    MngScheduleResponse(
      title: json['title'] as String,
      data: MngData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MngScheduleResponseToJson(
        MngScheduleResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'data': instance.data,
    };

MngData _$MngDataFromJson(Map<String, dynamic> json) => MngData(
      mng: (json['mng'] as List<dynamic>)
          .map((e) => VcSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      twoShot: (json['2s'] as List<dynamic>)
          .map((e) => VcSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MngDataToJson(MngData instance) => <String, dynamic>{
      'mng': instance.mng,
      '2s': instance.twoShot,
    };
