import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gita_gitroops/features/quiz/bloc/setup_quiz/setup_quiz_bloc.dart';
import 'package:gita_gitroops/features/quiz/domains/repository/quiz_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_models/models.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

void main() {
  group('SetupQuizBloc', () {
    late QuizRepository quizRepository;
    late SetupQuizBloc bloc;

    const questions = [TestModels.question1, TestModels.question2];

    final exception = Exception('Error!');

    setUp(() {
      quizRepository = MockQuizRepository();
      bloc = SetupQuizBloc(quizRepository: quizRepository);
    });

    blocTest<SetupQuizBloc, SetupQuizState>(
      'should emit QuizLoaded '
      'when LoadQuizQuestions is added '
      'and repository returns list of questions successfully',
      setUp: () {
        when(() => quizRepository.loadQuestions())
            .thenAnswer((_) async => questions);
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const LoadQuizQuestion()),
      expect: () => [
        const QuizLoading(),
        const QuizLoaded(questions),
      ],
      verify: (_) {
        verify(() => quizRepository.loadQuestions()).called(1);
      },
    );

    blocTest<SetupQuizBloc, SetupQuizState>(
      'should emit QuizLoadError '
      'when LoadQuizQuestions is added '
      'and repository throws an exception',
      setUp: () {
        when(() => quizRepository.loadQuestions()).thenThrow(exception);
      },
      build: () => bloc,
      act: (bloc) => bloc.add(const LoadQuizQuestion()),
      expect: () => [
        const QuizLoading(),
        QuizLoadError(exception.toString()),
      ],
      verify: (_) {
        verify(() => quizRepository.loadQuestions()).called(1);
      },
    );
  });
}
