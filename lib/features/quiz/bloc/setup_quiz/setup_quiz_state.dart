part of 'setup_quiz_bloc.dart';

abstract class SetupQuizState extends Equatable {
  const SetupQuizState();
}

class SetupQuizInitial extends SetupQuizState {
  @override
  List<Object> get props => [];
}

class QuizLoading extends SetupQuizState {
  const QuizLoading();

  @override
  List<Object?> get props => [];
}

class QuizLoaded extends SetupQuizState {
  final List<Question> questions;

  const QuizLoaded(this.questions);

  @override
  List<Object?> get props => [questions];
}

class QuizLoadError extends SetupQuizState {
  final String message;

  const QuizLoadError(this.message);

  @override
  List<Object?> get props => [message];
}
