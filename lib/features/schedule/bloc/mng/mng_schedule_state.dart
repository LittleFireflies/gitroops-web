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
  final List<VcSchedule> mngSchedule;
  final List<VcSchedule> twoShotSchedule;

  const MngScheduleLoaded(
    this.title,
    this.mngSchedule,
    this.twoShotSchedule,
  );

  @override
  List<Object?> get props => [
        title,
        mngSchedule,
        twoShotSchedule,
      ];
}
