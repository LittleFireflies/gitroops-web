import 'package:flutter/material.dart';

class LargeMainSection extends StatelessWidget {
  const LargeMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(160, 100, 160, 0),
      child: Row(
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
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
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
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('Medsos'),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('Medsos'),
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
