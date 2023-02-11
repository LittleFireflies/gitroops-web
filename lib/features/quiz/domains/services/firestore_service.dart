import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';

class FirestoreService {
  late FirebaseFirestore _db;

  FirestoreService() {
    _db = FirebaseFirestore.instance;
  }

  Future<List<Question>> getQuestions() async {
    final questions = await _db.collection('quiz').get();

    return questions.docs.map((doc) => Question.fromFirestore(doc)).toList();
  }
}
