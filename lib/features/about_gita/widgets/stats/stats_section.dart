import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/data/api/api_service.dart';
import 'package:gita_gitroops/features/about_gita/bloc/stats_cubit.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';
import 'package:http/http.dart';

class StatsSectionWrapper extends StatelessWidget {
  const StatsSectionWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StatsCubit(
        ApiService(
          Client(),
        ),
      )..loadStats(),
      child: const StatsSection(),
    );
  }
}

class StatsSection extends StatelessWidget {
  const StatsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(36),
      child: BlocBuilder<StatsCubit, StatsState>(
        builder: (context, state) {
          if (state is StatsLoaded) {
            final stats = state.stats;

            return ResponsiveWidget.isSmallScreen(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      StatCard(
                        value: '${stats.shows}',
                        label: 'Shows',
                      ),
                      StatCard(
                        value: '${stats.setlists}',
                        label: 'Setlist',
                      ),
                      StatCard(
                        value: '${stats.unitSongs}',
                        label: 'Unit Songs',
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: StatCard(
                          value: '${stats.shows}',
                          label: 'Shows',
                        ),
                      ),
                      Expanded(
                        child: StatCard(
                          value: '${stats.setlists}',
                          label: 'Setlist',
                        ),
                      ),
                      Expanded(
                        child: StatCard(
                          value: '${stats.unitSongs}',
                          label: 'Unit Songs',
                        ),
                      ),
                    ],
                  );
          } else if (state is StatsLoadedError) {
            return Text(state.message);
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      // child: ResponsiveWidget.isSmallScreen(context)
      //     ? Column(
      //         crossAxisAlignment: CrossAxisAlignment.stretch,
      //         children: statCards,
      //       )
      //     : Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: statCards.map((card) => Expanded(child: card)).toList(),
      //       ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String value;
  final String label;

  const StatCard({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveWidget.isLargeScreen(context) ? 16.0 : 0.0,
      ),
      child: SizedBox(
        child: Card(
          color: Theme.of(context).colorScheme.secondary,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: ResponsiveWidget.isSmallScreen(context) ? 48 : 72,
                    height: 1,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize:
                        ResponsiveWidget.isMediumScreen(context) ? 24 : 36,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
