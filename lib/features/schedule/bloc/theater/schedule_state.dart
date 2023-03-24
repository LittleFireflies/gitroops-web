part of 'schedule_cubit.dart';

abstract class ScheduleState extends Equatable {
  const ScheduleState();
}

class ScheduleLoading extends ScheduleState {
  @override
  List<Object> get props => [];
}

class ScheduleLoaded extends ScheduleState {
  final List<TheaterSchedule> schedules;

  const ScheduleLoaded(this.schedules);

  @override
  List<Object?> get props => [schedules];
}

class ScheduleEmpty extends ScheduleState {
  const ScheduleEmpty();

  @override
  List<Object?> get props => [];
}
