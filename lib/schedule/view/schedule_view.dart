import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class ScheduleView extends StatelessWidget {
  static const routeName = '/schedule';

  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Placeholder(),
          Text(
            'Schedule',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
