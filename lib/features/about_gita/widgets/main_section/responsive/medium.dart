import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MediumMainSection extends StatelessWidget {
  const MediumMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 16, 48, 0),
      child: Column(
        children: [
          Image.asset('assets/profile_image.png'),
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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  launchUrlString(AppConstants.twitterGita);
                },
                child: const Text('Twitter'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  launchUrlString(AppConstants.instagramGita);
                },
                child: const Text('Instagram'),
              ),
              const SizedBox(width: 8),
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
    );
  }
}
