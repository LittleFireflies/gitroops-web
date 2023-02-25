import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gita_gitroops/features/quiz/domains/models/answer_history.dart';
import 'package:gita_gitroops/features/quiz/view/home/quiz_home_page.dart';
import 'package:gita_gitroops/features/quiz/widgets/answer_history_view.dart';
import 'package:gita_gitroops/theme/color_scheme.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:share_plus/share_plus.dart';

class QuizResultPage extends StatelessWidget {
  static const routeName = '/quiz/result';

  final List<AnswerHistory> quizResults;

  const QuizResultPage({
    Key? key,
    required this.quizResults,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Score'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 480,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AspectRatio(
                    aspectRatio: 2 / 1,
                    child: PieChart(
                      dataMap: {
                        "correct":
                            quizResults.getCorrectAnswerCount().toDouble(),
                        "wrong": quizResults.getWrongAnswerCount().toDouble(),
                      },
                      colorList: [
                        Theme.of(context).colorScheme.green,
                        Theme.of(context).colorScheme.red
                      ],
                      centerText:
                          '${quizResults.getCorrectAnswerCount()} / ${quizResults.length}',
                      chartType: ChartType.ring,
                      legendOptions: const LegendOptions(showLegends: false),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValues: false,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      ElevatedButton(
                        child: const Text('Share your score'),
                        onPressed: () {
                          if (defaultTargetPlatform == TargetPlatform.iOS ||
                              defaultTargetPlatform == TargetPlatform.android) {
                            Share.share(_getShareText(quizResults));
                          } else {
                            Clipboard.setData(
                              ClipboardData(
                                text: _getShareText(quizResults),
                              ),
                            ).then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Disalin ke clipboard')));
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Your Results',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final answer = quizResults[index];

                      return AnswerHistoryView(answer: answer);
                    },
                    childCount: quizResults.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getShareText(List<AnswerHistory> results) {
    String title;

    if (results.getCorrectAnswerCount() >= 10) {
      title = 'Si Paling Gita';
    } else {
      title = '';
    }

    return '${title.isNotEmpty ? '"$title"\n\n' : ''}Saya ${results.getCorrectAnswerCount()}/${results.length} tahu tentang Gita. Kalau kamu seberapa tahu tentang @A_GitaJKT48?\n\nCoba quiz-nya di :\n${Uri.base.origin}${QuizHomePage.routeName}';
  }
}
