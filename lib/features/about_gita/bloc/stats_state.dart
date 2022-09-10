part of 'stats_cubit.dart';

abstract class StatsState extends Equatable {
  const StatsState();
}

class StatsLoading extends StatsState {
  const StatsLoading();

  @override
  List<Object> get props => [];
}

class StatsLoaded extends StatsState {
  final StatsResponse stats;

  const StatsLoaded(this.stats);

  @override
  List<Object?> get props => [stats];
}

class StatsLoadedError extends StatsState {
  final String message;

  const StatsLoadedError(this.message);

  @override
  List<Object?> get props => [message];
}
