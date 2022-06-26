import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({Key? key}) : super(key: key);

  final statCards = const [
    StatCard(
      value: AppConstants.showsCount,
      label: 'Shows',
    ),
    StatCard(
      value: AppConstants.setlistCount,
      label: 'Setlist',
    ),
    StatCard(
      value: AppConstants.unitSongCount,
      label: 'Unit Songs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(36),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: statCards,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: statCards.map((card) => Expanded(child: card)).toList(),
            ),
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
