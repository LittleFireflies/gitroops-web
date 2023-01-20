import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/features/quiz/bloc/quiz/quiz_bloc.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';
import 'package:gita_gitroops/features/quiz/view/quiz_result/quiz_result_page.dart';
import 'package:gita_gitroops/features/quiz/widgets/answer_card.dart';
import 'package:gita_gitroops/features/quiz/widgets/question_card.dart';
import 'package:gita_gitroops/widgets/shared_widgets/quizz_primary_button.dart';

class QuizGamePage extends StatelessWidget {
  static const routeName = '/quiz/start';

  final List<Question> questions;

  const QuizGamePage({Key? key, required this.questions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuizBloc(questions: questions)..add(const InitQuiz()),
      child: const QuizGameView(),
    );
  }
}

class QuizGameView extends StatelessWidget {
  const QuizGameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gita Quiz'),
      ),
      body: Center(
        child: SizedBox(
          width: 480,
          child: BlocConsumer<QuizBloc, QuizState>(
            listener: (context, state) {
              if (state.isFinished) {
                Navigator.pushReplacementNamed(
                  context,
                  QuizResultPage.routeName,
                  arguments: state.quizResult,
                );
              }
            },
            builder: (context, state) {
              final activeQuestion = state.questions[state.activeQuestionIndex];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // QuizTimer(
                  //   onTimesUp: () => !state.isLastQuestion
                  //       ? context.read<QuizBloc>().add(const OpenNextQuestion())
                  //       : context.read<QuizBloc>().add(const SeeResults()),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        QuestionCard(question: activeQuestion),
                        const SizedBox(height: 16),
                        ..._buildAnswerItems(state, context),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Visibility(
                    visible: state.selectedAnswer != '',
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: QuizzPrimaryButton(
                        label: !state.isLastQuestion
                            ? 'Next Question'
                            : 'See Results',
                        onPressed: () => !state.isLastQuestion
                            ? context
                                .read<QuizBloc>()
                                .add(const OpenNextQuestion())
                            : context.read<QuizBloc>().add(const SeeResults()),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildAnswerItems(
    QuizState state,
    BuildContext context,
  ) {
    final answerOptions = state.answerOptions;
    return answerOptions
        .map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: AnswerCard(
                text: option.answer,
                correctAnswer: option.isCorrectAnswer,
                selected: option.answer == state.selectedAnswer,
                onTap: () {
                  if (state.selectedAnswer.isEmpty) {
                    context.read<QuizBloc>().add(SelectAnswer(option.answer));
                  }
                },
              ),
            ))
        .toList();
  }
}
