import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:gita_gitroops/utils/constants.dart';

class LargeGitroopsProfileSection extends StatelessWidget {
  final String description;

  const LargeGitroopsProfileSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset('assets/gitroops_logo.png'),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gitroops',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                    ),
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            js.context.callMethod(
                                'open', [AppConstants.formGitroops]);
                          },
                          child: const Text('Link Form'),
                        ),
                        const SizedBox(width: 40),
                        ElevatedButton(
                          onPressed: () {
                            js.context.callMethod(
                                'open', [AppConstants.instagramGitroops]);
                          },
                          child: const Text('Link IG'),
                        ),
                        const SizedBox(width: 40),
                        ElevatedButton(
                          onPressed: () {
                            js.context.callMethod(
                                'open', [AppConstants.twitterGitroops]);
                          },
                          child: const Text('Link Twitter'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
