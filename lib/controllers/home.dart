import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/models/answer.dart';
import 'package:DevQuiz/models/question.dart';
import 'package:DevQuiz/models/quiz.dart';
import 'package:DevQuiz/models/user.dart';
import 'package:DevQuiz/repository/home.dart';
import 'package:DevQuiz/states/home.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(
    HomeState.empty,
  );

  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
