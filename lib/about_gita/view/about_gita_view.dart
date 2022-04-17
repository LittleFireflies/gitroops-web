import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class AboutGitaView extends StatelessWidget {
  static const routeName = '/about-gita';

  const AboutGitaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                children: [
                  Image.asset('assets/profile_image.png'),
                  const SizedBox(width: 100),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gita Sekar Andarini',
                          style: TextStyle(
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              onPressed: null,
                              child: Text('Medsos'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 48),
            Container(
              padding: const EdgeInsets.all(36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatCard(
                    value: '165',
                    label: 'Shows',
                  ),
                  StatCard(
                    value: '6',
                    label: 'Setlist',
                  ),
                  StatCard(
                    value: '8',
                    label: 'Unit Songs',
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
    return Container(
      width: 280,
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 72,
                  height: 1,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 36,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
