import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/data/models/vc_schedule/vc_schedule.dart';

part 'mng_schedule_state.dart';

class MngScheduleCubit extends Cubit<MngScheduleState> {
  final ApiService _apiService;

  MngScheduleCubit(ApiService apiService)
      : _apiService = apiService,
        super(const MngScheduleLoading());

  void loadSchedules() async {
    emit(const MngScheduleLoading());

    final response = await _apiService.getMngSchedule();

    emit(MngScheduleLoaded(
      response.title,
      response.data.mng,
      response.data.twoShot,
    ));
  }
}
