import 'package:flutter/material.dart';
import 'package:gita_gitroops/features/about_gita/view/about_gita_page.dart';
import 'package:gita_gitroops/utils/constants.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';
import 'package:gita_gitroops/widgets/responsive_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      scrollable: false,
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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/bawah_portrait.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Image.asset('assets/home_image.png'),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).backgroundColor,
            margin: const EdgeInsets.only(bottom: 24),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: _widgetList(context),
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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _widgetList(context),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Image.asset('assets/home_image.png'),
          ),
        ],
      ),
    );
  }
}

List<Widget> _widgetList(BuildContext context) {
  return [
    Padding(
      padding: ResponsiveWidget.isSmallScreen(context)
          ? EdgeInsets.zero
          : const EdgeInsets.only(top: 60),
      child: Text(
        AppConstants.jikoshoukai,
        style: TextStyle(
          fontSize: _getFontSize(context),
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ),
    SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 0 : 16),
    ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AboutGitaPage.routeName);
      },
      child: const Text('Explore'),
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFD7932B),
        onPrimary: Colors.white,
      ),
    ),
  ];
}

double _getFontSize(BuildContext context) {
  if (ResponsiveWidget.isSmallScreen(context)) {
    return 20;
  } else if (ResponsiveWidget.isMediumScreen(context)) {
    return 36;
  } else {
    return 36;
  }
}
