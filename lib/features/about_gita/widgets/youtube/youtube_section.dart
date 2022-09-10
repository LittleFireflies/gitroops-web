import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
      padding: EdgeInsets.symmetric(horizontal: _getHorizontalPadding(context)),
      child: Column(
        children: [
          Text(
            'KENALAN SAMA KAK GITA YUK!!!',
            style: TextStyle(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 18 : 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 22),
          SizedBox(
            child: YoutubePlayerIFrame(
              controller: YoutubePlayerController(
                initialVideoId: 'd1Hr6J22FWk',
                params: _getYoutubePlayerParams(),
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
                    params: _getYoutubePlayerParams(),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: YoutubePlayerIFrame(
                  controller: YoutubePlayerController(
                    initialVideoId: 'iMjZNl0LFYw',
                    params: _getYoutubePlayerParams(),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  YoutubePlayerParams _getYoutubePlayerParams() => const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        autoPlay: false,
      );

  double _getHorizontalPadding(BuildContext context) {
    if (ResponsiveWidget.getScreenSizeId(context) == ResponsiveWidget.large) {
      return 160;
    } else if (ResponsiveWidget.getScreenSizeId(context) ==
        ResponsiveWidget.medium) {
      return 64;
    } else {
      return 32;
    }
  }
}
