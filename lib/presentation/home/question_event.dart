part of 'questions_bloc.dart';

@immutable
sealed class QuestionEvent {}

class SelectQuestionEvent extends QuestionEvent {
  final int selectIndex;

  SelectQuestionEvent({required this.selectIndex});
}

class TruCountEvent extends QuestionEvent {
  final int trueCount;

  TruCountEvent({required this.trueCount});
}

class FalseCountEvent extends QuestionEvent {
  final int falseCount;

  FalseCountEvent({required this.falseCount});
}

class NextButtonEvent extends QuestionEvent {
  final int count;

  NextButtonEvent({required this.count});
}

class PreviousButtonEvent extends QuestionEvent {
  final int count;

  PreviousButtonEvent({required this.count});
}

class BackButtonEvent extends QuestionEvent{
  final bool hasBack;

  BackButtonEvent({required this.hasBack});
}

class EndQuestion extends QuestionEvent{
  final bool end;

  EndQuestion({required this.end});
}


