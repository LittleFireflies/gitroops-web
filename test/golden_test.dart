import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gita_gitroops/features/about_gitroops/view/about_gitroops_page.dart';
import 'package:gita_gitroops/features/home/view/home_page.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testWidgets(
    'Golden Test',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomePage(),
        ),
      );
      await expectLater(
          find.byType(HomePage), matchesGoldenFile('.golden/home.png'));
    },
  );

  testGoldens(
    'test golden_toolkit',
    (tester) async {
      await loadAppFonts();

      await tester.pumpWidgetBuilder(const MaterialApp(
        home: AboutGitroopsPage(),
      ));

      await multiScreenGolden(tester, 'flutter_demo_page_multiple_scenarios',
          devices: [
            Device.phone,
            Device.iphone11,
            Device.tabletPortrait,
            Device.tabletLandscape,
          ]);
    },
  );
}
