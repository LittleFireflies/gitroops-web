import 'package:flutter/material.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class QuizGamePage extends StatelessWidget {
  static const routeName = '/quiz/start';

  const QuizGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      scrollable: false,
      child: Center(
        child: SizedBox(
          width: 480,
          child: Placeholder(),
        ),
      ),
    );
  }
}
