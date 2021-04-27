import 'package:DevQuiz/controllers/home.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/states/home.dart';
import 'package:DevQuiz/widgets/home/app_bar.dart';
import 'package:DevQuiz/widgets/home/level_button.dart';
import 'package:DevQuiz/widgets/home/quiz_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();

    controller.getUser();
    controller.getQuizzes();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => controller.state == HomeState.success
      ? Scaffold(
          appBar: AppBarWidget(
            user: controller.user!,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LevelButtonWidget(
                      level: "Fácil",
                    ),
                    LevelButtonWidget(
                      level: "Médio",
                    ),
                    LevelButtonWidget(
                      level: "Difícil",
                    ),
                    LevelButtonWidget(
                      level: "Perito",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  children: controller.quizzes!
                      .map(
                        (e) => QuizCardWidget(
                          title: e.title,
                          completed:
                              '${e.questionsAnswered}/${e.questions.length}',
                          percent: e.questionsAnswered / e.questions.length,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        )
      : Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.darkGreen,
              ),
            ),
          ),
        );
}
