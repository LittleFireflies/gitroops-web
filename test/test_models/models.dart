import 'package:gita_gitroops/data/models/stats_response.dart';
import 'package:gita_gitroops/data/models/theater_schedule.dart';
import 'package:gita_gitroops/data/models/theater_schedule_response.dart';
import 'package:gita_gitroops/features/quiz/domains/models/question.dart';

class TestModels {
  static const TheaterSchedule theaterSchedule = TheaterSchedule(
      title: 'Gadis Gadis Remaja',
      date: 'Minggu, 5 Juni 2022',
      time: '19:00',
      link: 'https://jkt48.com/ticket/apply/id/2395/type/2');

  static const theaterScheduleResponse = TheaterScheduleResponse(
    data: [theaterSchedule],
  );

  static const statsResponse = StatsResponse(
    shows: 185,
    setlists: 8,
    unitSongs: 12,
  );

  static const question1 = Question(
    key: 'Q-1',
    question: 'Which fruit is Isaac Newton associated with?',
    option1: 'Apples',
    option2: 'Mangoes',
    option3: 'Durians',
    option4: 'Grapes',
    correctAnswer: 'Apples',
  );

  static const question2 = Question(
    key: 'Q-2',
    question: "What is Earth's only natural satellite?",
    option1: 'Sun',
    option2: 'Moon',
    option3: 'Mars',
    option4: 'Jupiter',
    correctAnswer: 'Moon',
  );
}
