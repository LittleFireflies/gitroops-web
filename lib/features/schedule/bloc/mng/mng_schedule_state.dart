part of 'mng_schedule_cubit.dart';

abstract class MngScheduleState extends Equatable {
  const MngScheduleState();
}

class MngScheduleLoading extends MngScheduleState {
  const MngScheduleLoading();

  @override
  List<Object> get props => [];
}

class MngScheduleLoaded extends MngScheduleState {
  final String title;
  final List<VcSchedule> schedules;

  const MngScheduleLoaded(
    this.title,
    this.schedules,
  );

  @override
  List<Object?> get props => [title, schedules];
}

class MngScheduleEmpty extends MngScheduleState {
  const MngScheduleEmpty();

  @override
  List<Object?> get props => [];
}
