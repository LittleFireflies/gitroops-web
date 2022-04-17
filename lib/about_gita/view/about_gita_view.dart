import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 160),
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
            YoutubeSection(),
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

class YoutubeSection extends StatefulWidget {
  const YoutubeSection({
    Key? key,
  }) : super(key: key);

  @override
  State<YoutubeSection> createState() => _YoutubeSectionState();
}

class _YoutubeSectionState extends State<YoutubeSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 160.0),
      child: Column(
        children: [
          SizedBox(
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'd1Hr6J22FWk',
                params: YoutubePlayerParams(
                  showControls: true,
                  showFullscreenButton: true,
                ),
              ),
              aspectRatio: 16 / 9,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: YoutubePlayerIFrame(
                  controller: YoutubePlayerController(
                    initialVideoId: '5o0ockfSOK4',
                    params: YoutubePlayerParams(
                      showControls: true,
                      showFullscreenButton: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: YoutubePlayerIFrame(
                  controller: YoutubePlayerController(
                    initialVideoId: 'iMjZNl0LFYw',
                    params: YoutubePlayerParams(
                      showControls: true,
                      showFullscreenButton: true,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
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
        elevation: 4.0,
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
