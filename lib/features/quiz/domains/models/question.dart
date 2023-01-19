import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Question extends Equatable {
  final String key;
  final String question;
  final String option1;
  final String option2;
  final String? option3;
  final String? option4;
  final String correctAnswer;

  const Question({
    required this.key,
    required this.question,
    required this.option1,
    required this.option2,
    this.option3,
    this.option4,
    required this.correctAnswer,
  });

  factory Question.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc,
      ) {
    final map = doc.data();

    return Question(
      key: doc.id,
      question: map['question'],
      option1: map['option_1'],
      option2: map['option_2'],
      option3: map['option_3'],
      option4: map['option_4'],
      correctAnswer: map['correct_answer'],
    );
  }

  @override
  List<Object?> get props =>
      [
        key,
        question,
        option1,
        option2,
        option3,
        option4,
        correctAnswer,
      ];
}
