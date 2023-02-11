import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';
import 'package:gita_gitroops/features/quiz/domains/repository/quiz_repository.dart';

part 'setup_quiz_event.dart';
part 'setup_quiz_state.dart';

class SetupQuizBloc extends Bloc<SetupQuizEvent, SetupQuizState> {
  final QuizRepository _quizRepository;

  SetupQuizBloc({
    required QuizRepository quizRepository,
  })  : _quizRepository = quizRepository,
        super(SetupQuizInitial()) {
    on<LoadQuizQuestion>((event, emit) async {
      emit(const QuizLoading());

      try {
        final questions = await _quizRepository.loadQuestions();

        emit(QuizLoaded(questions));
      } catch (error) {
        emit(QuizLoadError(error.toString()));
      }
    });
  }
}
