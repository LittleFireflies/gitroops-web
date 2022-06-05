import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/features/schedule/bloc/schedule_cubit.dart';
import 'package:gita_gitroops/features/schedule/widgets/theater_schedule_tile.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:http/http.dart';

class SchedulePage extends StatelessWidget {
  static const routeName = '/schedule';

  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ScheduleCubit(
        ApiService(
          Client(),
        ),
      )..loadSchedules(),
      child: const ScheduleView(),
    );
  }
}

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Image.asset('assets/banner_theater.png'),
            const SizedBox(height: 40),
            const Text(
              'June 2022',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 40),
            BlocBuilder<ScheduleCubit, ScheduleState>(
                builder: (context, state) {
              if (state is ScheduleLoaded) {
                return SizedBox(
                  width: 600,
                  child: Column(
                    children: state.schedules
                        .map((schedule) =>
                            TheaterScheduleTile(schedule: schedule))
                        .toList(),
                  ),
                );
              } else if (state is ScheduleEmpty) {
                return const Text(
                  'Tidak ada jadwal tersedia saat ini',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
          ],
        ),
      ),
    );
  }
}
