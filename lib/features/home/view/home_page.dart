import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      child: ResponsiveWidget(
        largeScreen: LargeHomeView(),
        smallScreen: SmallHomeView(),
      ),
    );
  }
}

class SmallHomeView extends StatelessWidget {
  const SmallHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/home_image.png'),
        Positioned(
          bottom: 16,
          left: 16,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).backgroundColor,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum Dolor Sit Amet',
                  style: TextStyle(
                    fontSize: _getFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.primary,
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
      ],
    );
  }
}

class LargeHomeView extends StatelessWidget {
  const LargeHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      fontSize: _getFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
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
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: Expanded(
              flex: 3,
              child: Image.asset('assets/home_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}

double _getFontSize(BuildContext context) {
  if (ResponsiveWidget.isSmallScreen(context)) {
    return 24;
  } else if (ResponsiveWidget.isMediumScreen(context)) {
    return 48;
  } else {
    return 60;
  }
}
