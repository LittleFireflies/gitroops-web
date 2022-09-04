import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SmallGitroopsProfileSection extends StatelessWidget {
  final String description;

  const SmallGitroopsProfileSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            'Gitroops',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 36,
            ),
          ),
          Image.asset('assets/gitroops_logo.png'),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  launchUrlString(AppConstants.formGitroops);
                },
                child: const Text('Link Form'),
              ),
              ElevatedButton(
                onPressed: () {
                  launchUrlString(AppConstants.instagramGitroops);
                },
                child: const Text('Link IG'),
              ),
              ElevatedButton(
                onPressed: () {
                  launchUrlString(AppConstants.twitterGitroops);
                },
                child: const Text('Link Twitter'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
