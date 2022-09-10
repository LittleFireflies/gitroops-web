import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LargeMainSection extends StatelessWidget {
  const LargeMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(160, 100, 160, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/profile_image.png'),
          const SizedBox(width: 100),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Gita Sekar Andarini',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  AppConstants.aboutGita,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString(AppConstants.twitterGita);
                      },
                      child: const Text('Twitter'),
                    ),
                    const SizedBox(width: 24),
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString(AppConstants.instagramGita);
                      },
                      child: const Text('Instagram'),
                    ),
                    const SizedBox(width: 24),
                    ElevatedButton(
                      onPressed: () {
                        launchUrlString(AppConstants.tiktokGita);
                      },
                      child: const Text('Tiktok'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
