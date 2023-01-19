import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/features/quiz/bloc/setup_quiz/setup_quiz_bloc.dart';
import 'package:gita_gitroops/features/quiz/domains/repository/quiz_repository.dart';
import 'package:gita_gitroops/features/quiz/domains/services/firestore_service.dart';
import 'package:gita_gitroops/features/quiz/view/game/quiz_game_page.dart';
import 'package:gita_gitroops/widgets/page_scaffold.dart';

class QuizHomePage extends StatelessWidget {
  static const routeName = '/quiz';

  const QuizHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupQuizBloc(
        quizRepository: QuizRepository(
          firestoreService: FirestoreService(),
        ),
      ),
      child: const QuizHomeView(),
    );
  }
}

class QuizHomeView extends StatelessWidget {
  const QuizHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      scrollable: false,
      child: Center(
        child: SizedBox(
          width: 480,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocListener<SetupQuizBloc, SetupQuizState>(
              listener: (context, state) {
                if (state is QuizLoaded) {
                  Navigator.pushNamed(context, QuizGamePage.routeName);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.quiz,
                    size: 80,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Gita Quiz',
                    style: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Seberapa kenal Anda dengan Gita?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<SetupQuizBloc>()
                          .add(const LoadQuizQuestion());
                    },
                    child: const Text('Mulai'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
