import 'package:collection/collection.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';
import 'package:gita_gitroops/features/quiz/domains/services/firestore_service.dart';

class QuizRepository {
  final FirestoreService _firestoreService;

  const QuizRepository({required FirestoreService firestoreService})
      : _firestoreService = firestoreService;

  Future<List<Question>> loadQuestions({int maxQuestion = 10}) async {
    final questions = await _firestoreService.getQuestions();

    if (questions.length > maxQuestion) {
      final filteredQuestions = questions.sample(maxQuestion);

      return filteredQuestions;
    } else {
      questions.shuffle();

      return questions;
    }
  }
}
