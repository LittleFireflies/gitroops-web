import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class SchedulePage extends StatelessWidget {
  static const routeName = '/schedule';

  const SchedulePage({Key? key}) : super(key: key);

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
            SizedBox(
              width: 600,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Seishun Girls',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          'Minggu, 24 April 2022',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          '16.30 - 17.30',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Beli'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
