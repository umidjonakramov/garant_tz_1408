import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/questions_data/question_data.dart';
import '../../presentation/home/questions_bloc.dart';


class AnswerContainer extends StatelessWidget {
  final String answer;
  final String text;
  final Color color;
  final Color textColor;
  final QuestionBloc bloc;

  const AnswerContainer({
    Key? key,
    required this.answer,
    required this.text,
    required this.color,
    required this.textColor,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionBloc, QuestionState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        bool isSelected = questionList[state.selectIndex ?? 0].selectedAnswer == answer;
        bool isCorrect = questionList[state.selectIndex ?? 0].answer == answer;
        bool isAnswered = questionList[state.selectIndex ?? 0].selectedAnswer.isNotEmpty;

        Color backgroundColor;
        if (isAnswered) {
          if (isCorrect) {
            backgroundColor = Colors.green;
          } else if (isSelected) {
            backgroundColor = Colors.red;
          } else {
            backgroundColor = Colors.white;
          }
        } else {
          backgroundColor = Colors.white;
        }

        Color answerTextColor =
        isAnswered && (isSelected || isCorrect) ? Colors.white : Colors.black;

        return InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            if (!isAnswered) {
              questionList[state.selectIndex ?? 0].selectedAnswer = answer;

              int trueCount = 0;
              int falseCount = 0;

              for (var question in questionList) {
                if (question.selectedAnswer.isNotEmpty) {
                  if (question.selectedAnswer == question.answer) {
                    trueCount++;
                  } else {
                    falseCount++;
                  }
                }
              }
              bloc.add(TruCountEvent(trueCount: trueCount));
              bloc.add(FalseCountEvent(falseCount: falseCount));
            }
          },
          child: Container(
            margin:  EdgeInsets.symmetric(vertical: 4.h),
            padding:  EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Text(
                  '$answer  ',
                  style:  TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: answerTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
