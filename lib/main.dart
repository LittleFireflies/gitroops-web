import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:gita_gitroops/features/about_gita/view/about_gita_page.dart';
import 'package:gita_gitroops/features/about_gitroops/view/about_gitroops_page.dart';
import 'package:gita_gitroops/features/home/view/home_page.dart';
import 'package:gita_gitroops/features/quiz/domains/models/answer_history.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';
import 'package:gita_gitroops/features/quiz/view/game/quiz_game_page.dart';
import 'package:gita_gitroops/features/quiz/view/home/quiz_home_page.dart';
import 'package:gita_gitroops/features/quiz/view/quiz_result/quiz_result_page.dart';
import 'package:gita_gitroops/features/schedule/view/schedule_page.dart';
import 'package:gita_gitroops/firebase_options.dart';
import 'package:gita_gitroops/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  usePathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Gitroops #TheNewTroops',
          theme: GitroopsTheme.mainTheme(),
          initialRoute: HomePage.routeName,
          routes: {
            HomePage.routeName: (context) => const HomePage(),
            AboutGitaPage.routeName: (context) => const AboutGitaPage(),
            SchedulePage.routeName: (context) => const SchedulePage(),
            AboutGitroopsPage.routeName: (context) => const AboutGitroopsPage(),
            QuizHomePage.routeName: (context) => const QuizHomePage(),
            QuizGamePage.routeName: (context) {
              final questions =
                  ModalRoute.of(context)!.settings.arguments as List<Question>;

              return QuizGamePage(questions: questions);
            },
            QuizResultPage.routeName: (context) {
              final results = ModalRoute.of(context)!.settings.arguments
                  as List<AnswerHistory>;

              return QuizResultPage(quizResults: results);
            },
          },
        );
      },
    );
  }
}
