import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}
