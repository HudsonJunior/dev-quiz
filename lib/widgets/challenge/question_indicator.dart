import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/widgets/common/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Questão 4',
                  style: AppTextStyles.body,
                ),
                Text(
                  'de 10',
                  style: AppTextStyles.body,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(
              value: 0.3,
            )
          ],
        ),
      );
}
