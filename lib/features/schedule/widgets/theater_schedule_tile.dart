import 'package:flutter/material.dart';
import 'package:gita_gitroops/data/models/theater_schedule.dart';
import 'dart:js' as js;

class TheaterScheduleTile extends StatelessWidget {
  final TheaterSchedule schedule;

  const TheaterScheduleTile({Key? key, required this.schedule})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                schedule.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
              Text(
                schedule.date,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
              Text(
                schedule.time,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            js.context.callMethod('open', [schedule.link]);
          },
          child: const Text('Beli'),
        ),
      ],
    );
  }
}