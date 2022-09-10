import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/data/models/stats_response.dart';

part 'stats_state.dart';

class StatsCubit extends Cubit<StatsState> {
  final ApiService _apiService;

  StatsCubit(this._apiService) : super(const StatsLoading());

  void loadStats() async {
    emit(const StatsLoading());

    try {
      final stats = await _apiService.getGitaStats();

      emit(StatsLoaded(stats));
    } catch (e) {
      emit(StatsLoadedError(e.toString()));
    }
  }
}
