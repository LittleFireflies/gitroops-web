import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';

class SmallMainSection extends StatelessWidget {
  const SmallMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset('assets/profile_image.png'),
          const Text(
            'Gita Sekar Andarini',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            AppConstants.aboutGita,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  js.context.callMethod('open', [AppConstants.twitterGita]);
                },
                child: const Text('Twitter'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  js.context.callMethod('open', [AppConstants.instagramGita]);
                },
                child: const Text('Instagram'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  js.context.callMethod('open', [AppConstants.tiktokGita]);
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
