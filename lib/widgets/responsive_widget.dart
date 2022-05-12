import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 750;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 750 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static const large = 3;
  static const medium = 2;
  static const small = 1;

  static getScreenSizeId(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1200) {
      // Large Screen
      return large;
    } else if (MediaQuery.of(context).size.width >= 750 &&
        MediaQuery.of(context).size.width <= 1200) {
      // Medium Screen
      return medium;
    } else {
      // Small Screen
      return small;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 750) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
