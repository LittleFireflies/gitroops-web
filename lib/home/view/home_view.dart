import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/';

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 100,
          bottom: 80,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem Ipsum Dolor Sit Amet',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Explore'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFD7932B),
                        onPrimary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 3,
              child: Image.asset('assets/home_image.png'),
            ),
          ],
        ),
      ),
    );
  }
}
