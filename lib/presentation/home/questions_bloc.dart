import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:garant_tz_1408/data/questions_data/question_data.dart';

part 'question_event.dart';

part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionState()) {
    on<SelectQuestionEvent>((event, emit) async {
      emit(state.copyWith(selectIndex: event.selectIndex));
    });
    on<TruCountEvent>((event, emit) async {
      emit(state.copyWith(trueCount: event.trueCount));
    });
    on<FalseCountEvent>((event, emit) async {
      emit(state.copyWith(falseCount: event.falseCount));
    });
    on<NextButtonEvent>((event, emit) async {
      emit(state.copyWith(selectIndex: event.count));
    });
    on<PreviousButtonEvent>((event, emit) async {
      emit(state.copyWith(selectIndex: event.count));
    });
    on<EndQuestion>((event,emit)async{
      emit(state.copyWith(end: event.end));
    });
  }
}
