part of 'quiz_bloc.dart';

abstract class QuizEvent extends Equatable {
  const QuizEvent();
}

class InitQuiz extends QuizEvent {
  const InitQuiz();

  @override
  List<Object?> get props => [];
}

class SelectAnswer extends QuizEvent {
  final String selectedAnswer;

  const SelectAnswer(this.selectedAnswer);

  @override
  List<Object?> get props => [selectedAnswer];
}

class OpenNextQuestion extends QuizEvent {
  const OpenNextQuestion();

  @override
  List<Object?> get props => [];
}

class SeeResults extends QuizEvent {
  const SeeResults();

  @override
  List<Object?> get props => [];
}
