// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vc_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VcSchedule _$VcScheduleFromJson(Map<String, dynamic> json) => VcSchedule(
      name: json['name'] as String,
      session: json['session'] as String,
      track: json['track'] as String,
      time: json['time'] as String,
      isSoldOut: json['isSoldOut'] as bool,
      link: json['link'] as String,
    );

Map<String, dynamic> _$VcScheduleToJson(VcSchedule instance) =>
    <String, dynamic>{
      'name': instance.name,
      'session': instance.session,
      'track': instance.track,
      'time': instance.time,
      'isSoldOut': instance.isSoldOut,
      'link': instance.link,
    };
