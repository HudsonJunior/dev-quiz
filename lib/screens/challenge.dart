import 'package:DevQuiz/widgets/challenge/question_indicator.dart';
import 'package:DevQuiz/widgets/challenge/quiz.dart';
import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            top: true,
            child: QuestionIndicatorWidget(),
          ),
        ),
        body: QuizWidget(
          title: 'O que o Flutter faz em sua totalidade?',
        ),
      );
}
