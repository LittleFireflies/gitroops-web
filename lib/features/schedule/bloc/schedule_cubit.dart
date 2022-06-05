import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/data/models/theater_schedule.dart';

part 'schedule_state.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  final ApiService _apiService;

  ScheduleCubit(ApiService apiService)
      : _apiService = apiService,
        super(ScheduleLoading());

  void loadSchedules() async {
    emit(ScheduleLoading());

    final response = await _apiService.getTheaterSchedule();
    final schedules = response.data;

    if (schedules.isEmpty) {
      emit(const ScheduleEmpty());
    } else {
      emit(ScheduleLoaded(schedules));
    }
  }
}
