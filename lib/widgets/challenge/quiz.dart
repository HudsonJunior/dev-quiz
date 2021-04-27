import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/widgets/challenge/answer.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.heading,
            ),
            const SizedBox(
              height: 24.0,
            ),
            AnswerWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente',
              isRight: false,
              isSelected: true,
            ),
            AnswerWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente',
            ),
            AnswerWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente',
            ),
            AnswerWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente',
            )
          ],
        ),
      );
}
