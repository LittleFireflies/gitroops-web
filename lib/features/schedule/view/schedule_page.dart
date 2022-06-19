import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/features/schedule/bloc/schedule_cubit.dart';
import 'package:gita_gitroops/features/schedule/widgets/theater_schedule_tile.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

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
      child: ScheduleView(),
    );
  }
}

class ScheduleView extends StatelessWidget {
  final dateFormat = DateFormat('MMMM y');

  ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: ResponsiveWidget.isSmallScreen(context)
            ? const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
              )
            : const EdgeInsets.only(
                top: 80.0,
                left: 64,
                right: 64,
              ),
        child: Column(
          children: [
            Image.asset('assets/banner_theater.png'),
            const SizedBox(height: 40),
            Text(
              dateFormat.format(DateTime.now()),
              style: const TextStyle(
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
