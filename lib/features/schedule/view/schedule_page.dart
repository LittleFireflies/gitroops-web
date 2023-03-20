import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/data/models/vc_schedule/vc_schedule.dart';
import 'package:gita_gitroops/features/schedule/bloc/mng/mng_schedule_cubit.dart';
import 'package:gita_gitroops/features/schedule/bloc/theater/schedule_cubit.dart';
import 'package:gita_gitroops/features/schedule/widgets/theater_schedule_tile.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SchedulePage extends StatelessWidget {
  static const routeName = '/schedule';

  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => ApiService(Client()),
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ScheduleCubit(
                context.read<ApiService>(),
              )..loadSchedules(),
            ),
            BlocProvider(
              create: (_) => MngScheduleCubit(
                context.read<ApiService>(),
              )..loadSchedules(),
            ),
          ],
          child: ScheduleView(),
        );
      }),
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
              style: TextStyle(
                fontSize: 36.h,
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
                return Text(
                  'Tidak ada jadwal tersedia saat ini',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.h,
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            }),
            const SizedBox(height: 80),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/mng_fest_nice_to_see_you.jpg'),
            ),
            const SizedBox(height: 40),
            const Text(
              'Meet & Greet',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      'Sesi',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Jalur',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Waktu Mulai',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Beli',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<MngScheduleCubit, MngScheduleState>(
              builder: (context, state) {
                if (state is MngScheduleLoaded) {
                  if (state.mngSchedule.isEmpty) {
                    return Text(
                      'Tidak ada jadwal tersedia saat ini',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.h,
                      ),
                    );
                  }

                  return SizedBox(
                    width: 600,
                    child: Column(
                      children: state.mngSchedule
                          .map(
                              (schedule) => MngScheduleTile(schedule: schedule))
                          .toList(),
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            const SizedBox(height: 40),
            const Text(
              '2Shot',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Text(
                      'Sesi',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Jalur',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Waktu Mulai',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Beli',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<MngScheduleCubit, MngScheduleState>(
              builder: (context, state) {
                if (state is MngScheduleLoaded) {
                  if (state.twoShotSchedule.isEmpty) {
                    return Text(
                      'Tidak ada jadwal tersedia saat ini',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.h,
                      ),
                    );
                  }

                  return SizedBox(
                    width: 600,
                    child: Column(
                      children: state.twoShotSchedule
                          .map(
                              (schedule) => MngScheduleTile(schedule: schedule))
                          .toList(),
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class MngScheduleTile extends StatelessWidget {
  final VcSchedule schedule;

  const MngScheduleTile({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            schedule.session,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
        ),
        Expanded(
          child: Text(
            schedule.track,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
        ),
        Expanded(
          child: Text(
            schedule.time,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
        ),
        Flexible(
          child: Align(
            alignment: Alignment.centerRight,
            child: schedule.isSoldOut
                ? const Text(
                    'Sold Out',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  )
                : ElevatedButton(
                    onPressed: schedule.link.isNotEmpty
                        ? () {
                            launchUrlString(schedule.link);
                          }
                        : null,
                    child: const Text('Beli'),
                  ),
          ),
        ),
      ],
    );
  }
}
