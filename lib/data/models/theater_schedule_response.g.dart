// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theater_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TheaterScheduleResponse _$TheaterScheduleResponseFromJson(
        Map<String, dynamic> json) =>
    TheaterScheduleResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TheaterSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
