import 'package:equatable/equatable.dart';

class AnswerOption extends Equatable {
  final String answer;
  final bool isCorrectAnswer;

  const AnswerOption({
    required this.answer,
    required this.isCorrectAnswer,
  });

  @override
  List<Object?> get props => [
        answer,
        isCorrectAnswer,
      ];
}
