part of 'questions_bloc.dart';

class QuestionState {
  int? selectIndex;
  List<QuestionData>? questionList;
  int? trueCount;
  int? falseCount;
  bool? end;

  QuestionState(
      {this.selectIndex, this.questionList, this.trueCount, this.falseCount,this.end});

  QuestionState copyWith(
          {int? selectIndex,
          List<QuestionData>? questionList,
          int? trueCount,
          int? falseCount,
          bool? end
          }) =>
      QuestionState(
          selectIndex: selectIndex ?? this.selectIndex,
          questionList: questionList ?? this.questionList,
          trueCount: trueCount ?? this.trueCount,
          falseCount: falseCount ?? this.falseCount,
      end:end??this.end
      );
}
