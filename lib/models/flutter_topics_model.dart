import 'package:flutter/cupertino.dart';
import 'package:quizler/models/layout_questions_model.dart';
import 'package:quizler/models/navigation_question_model.dart';
import 'package:quizler/models/state_question_model.dart';
import 'package:quizler/models/widget_question_model.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.square_stack_3d_up,
    topicName: "History",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.arrow_2_circlepath,
    topicName: "Mathematics",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.paperplane,
    topicName: "Science",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
    topicName: "General Knowledge",
    topicQuestions: layOutQuestionsList,
  ),
];