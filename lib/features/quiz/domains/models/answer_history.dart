import 'package:equatable/equatable.dart';

class AnswerHistory extends Equatable {
  final String question;
  final String answer;
  final String correctAnswer;

  const AnswerHistory({
    required this.question,
    required this.answer,
    required this.correctAnswer,
  });

  @override
  List<Object?> get props => [
        question,
        answer,
        correctAnswer,
      ];
}

extension AnswerHistoryListExt on List<AnswerHistory> {
  int getCorrectAnswerCount() {
    return where((element) => element.answer == element.correctAnswer).length;
  }

  int getWrongAnswerCount() {
    return where((element) => element.answer != element.correctAnswer).length;
  }
}
