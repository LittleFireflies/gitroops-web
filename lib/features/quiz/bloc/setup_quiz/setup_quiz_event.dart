part of 'setup_quiz_bloc.dart';

abstract class SetupQuizEvent extends Equatable {
  const SetupQuizEvent();
}

class LoadQuizQuestion extends SetupQuizEvent {
  const LoadQuizQuestion();

  @override
  List<Object?> get props => [];
}
