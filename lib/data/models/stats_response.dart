import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats_response.g.dart';

@JsonSerializable()
class StatsResponse extends Equatable {
  final int shows;
  final int setlists;
  @JsonKey(name: 'unit_songs')
  final int unitSongs;

  const StatsResponse({
    required this.shows,
    required this.setlists,
    required this.unitSongs,
  });

  static StatsResponse fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);

  @override
  List<Object?> get props => [
        shows,
        setlists,
        unitSongs,
      ];
}
