import 'package:dev_quiz/challenge/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  QuizWidget({Key? key, required this.question, required this.onChange})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int selecteIndex = -1;
  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            this.widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              answerModel: answer(i),
              disabled: selecteIndex != -1,
              isSelected: selecteIndex == i,
              onTap: () {
                selecteIndex = i;
                setState(() {});
                Future.delayed(Duration(milliseconds: 500))
                    .then((value) => widget.onChange());
              },
            ),
        ],
      ),
    );
  }
}
