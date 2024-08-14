import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garant_tz_1408/data/questions_data/question_data.dart';
import 'package:garant_tz_1408/presentation/home/questions_bloc.dart';
import 'package:garant_tz_1408/ui/answer_screen/answer_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garant_tz_1408/ui/widgets/answer_container.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  void dispose() {
    bloc.close();
    timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    print('iniiiit');
    startTimer();
    _scrollToIndex(1);
    questionList = [
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
      QuestionData(
          question: 'Agar mijoz sotib olgan muzlatgichda biror muammo chiqsa...',
          options: {
            'A': 'Mijoz servis markaziga olib boradi, servis bepul',
            'B': 'Servis markazi mijozning uyiga keladi, servis pullik boladi',
            'C': 'togri javob',
            'D': "Barcha Javoblar to'g'ri",
          },
          answer: 'C',
          selectedAnswer: ""),
    ];
    super.initState();
  }

  final bloc = QuestionBloc();
  Timer? timer;
  final ScrollController _scrollController = ScrollController();
  void _scrollToIndex(int index, {bool isManualScroll = false}) {
    const itemWidth = 50.0;
    final offset = index * itemWidth;

    if (_scrollController.hasClients && !isManualScroll) {
      _scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 10),
        curve: Curves.easeInOut,
      );
    }
  }


  static const int initialTime = 90;
  int remainingTime = initialTime;

  void startTimer() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel();
        bloc.add(EndQuestion(end: true));
      }
    });
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      remainingTime = initialTime;
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: BlocProvider.value(
          value: bloc,
          child: BlocConsumer<QuestionBloc, QuestionState>(
            listener: (context, state) {
              if (state.end == true) {
                var x = questionList.length -
                    (state.trueCount ?? 0) -
                    (state.falseCount ?? 0);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                            (state.trueCount ?? 0),
                            (state.falseCount ?? 0) + x)));
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 56.h, left: 12.w, right: 12.w),
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.white,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              iconSize: 30.w,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: Column(
                                        children: [
                                          Center(
                                              child: Icon(
                                            Icons.question_mark,
                                            color: Colors.black,
                                            size: 56.w,
                                          )),
                                          Center(
                                            child: Text(
                                              "Haqiqatda ham testni yakunlashni hohlaysizmi? Belgilanmagan test javoblari xato deb hisobga olinadi Qaytish Yakunlash",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.sp),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(height: 32.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: 100,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey
                                                          .withOpacity(0.7),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10.r))),
                                                  child: Center(
                                                    child:  Text(
                                                      "Qaytish",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15.sp),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  var x = questionList.length -
                                                      (state.trueCount ?? 0) -
                                                      (state.falseCount ?? 0);
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ResultScreen(
                                                                  (state.trueCount ??
                                                                      0),
                                                                  (state.falseCount ??
                                                                          0) +
                                                                      x)));

                                                },
                                                child: Container(
                                                  width: 100,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.red
                                                          .withOpacity(0.7),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10.r))),
                                                  child: Center(
                                                    child: Text(
                                                      "Yakunlash",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.sp),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      content: Text(
                                        "",
                                      ),
                                      actions: <Widget>[],
                                    );
                                  },
                                );
                              },
                              icon: Icon(
                                Icons.logout_outlined,
                                size: 24.w,
                              ),
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: Icon(
                                Icons.warning_amber_outlined,
                                size: 24.w,
                              ),
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: const Icon(Icons.shield_moon_outlined),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.r)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.r),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.punch_clock,
                                      size: 30.w,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      formatTime(remainingTime),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 70,
                        child: ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: questionList.length,
                          itemBuilder: (context, index) {
                            Color backgroundColor;
                            if (questionList[index].selectedAnswer ==
                                questionList[index].answer) {
                              backgroundColor = Colors.green;
                            } else {
                              backgroundColor = Colors.red;
                            }
                            if (questionList[index].selectedAnswer == "") {
                              backgroundColor = Colors.white;
                            }
                            Color textColor = Colors.white;
                            if (backgroundColor == Colors.white) {
                              textColor = Colors.black;
                            }
                            return InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  bloc.add(
                                      SelectQuestionEvent(selectIndex: index));
                                });
                              },
                              child: Column(
                                children: [
                                  Builder(builder: (context) {
                                    if ((state.selectIndex ?? 0) == index) {
                                      return Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.blue,
                                        size: 8.w,
                                      );
                                    }
                                    return const SizedBox();
                                  }),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: backgroundColor,
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(
                                            color: textColor,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Savol:',
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '${questionList[state.selectIndex ?? 0].question}',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'Javoblar',
                            style:
                                TextStyle(fontSize: 16.sp, color: Colors.grey),
                          ),
                          SizedBox(height: 8.h),
                          AnswerContainer(
                              answer: 'A',
                              text:
                                  '${questionList[state.selectIndex ?? 0].options["A"]}',
                              color: Colors.white,
                              textColor: questionList[state.selectIndex ?? 0]
                                          .selectedAnswer ==
                                      'A'
                                  ? questionList[state.selectIndex ?? 0]
                                              .answer ==
                                          'A'
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.black,
                              bloc: bloc),
                          AnswerContainer(
                              answer: 'B',
                              text:
                                  '${questionList[state.selectIndex ?? 0].options["B"]}',
                              color: Colors.white,
                              textColor: questionList[state.selectIndex ?? 0]
                                          .selectedAnswer ==
                                      'B'
                                  ? questionList[state.selectIndex ?? 0]
                                              .answer ==
                                          'B'
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.black,
                              bloc: bloc),
                          AnswerContainer(
                              answer: 'C',
                              text:
                                  '${questionList[state.selectIndex ?? 0].options["C"]}',
                              color: Colors.white,
                              textColor: questionList[state.selectIndex ?? 0]
                                          .selectedAnswer ==
                                      'C'
                                  ? questionList[state.selectIndex ?? 0]
                                              .answer ==
                                          'C'
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.black,
                              bloc: bloc),
                          AnswerContainer(
                              answer: 'D',
                              text: 'Barcha javoblar noto’g’ri',
                              color: Colors.white,
                              textColor: questionList[state.selectIndex ?? 0]
                                          .selectedAnswer ==
                                      'D'
                                  ? questionList[state.selectIndex ?? 0]
                                              .answer ==
                                          'D'
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.black,
                              bloc: bloc),
                          SizedBox(height: 20.h),
                          // Added a SizedBox to provide space before the Spacer
                          Builder(builder: (context) {
                            if ((state.selectIndex ?? 0) + 1 ==
                                questionList.length) {
                              return Center(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if ((state.selectIndex ?? 0) > 0) {
                                              bloc.add(PreviousButtonEvent(
                                                  count:
                                                  (state.selectIndex ?? 0) -
                                                      1));
                                            }
                                            _scrollToIndex(state.selectIndex ??0);

                                          });
                                        },
                                        icon: const Icon(Icons.arrow_back),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          var x = questionList.length -
                                              (state.trueCount ?? 0) -
                                              (state.falseCount ?? 0);

                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultScreen(
                                                          (state.trueCount ??
                                                              0),
                                                          (state.falseCount ??
                                                                  0) +
                                                              x)));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r))),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.r),
                                            child: Center(
                                                child: Text(
                                              "Yakunlash",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.sp),
                                            )),
                                          ),
                                        ),
                                      ),
                                      IconButton(

                                        onPressed: () {
                                        },
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color: Colors.transparent,
                                        ),
                                        splashColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                      ),
                                    ]),
                              );
                            }
                            return Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if ((state.selectIndex ?? 0) > 0) {
                                              bloc.add(PreviousButtonEvent(
                                                  count:
                                                      (state.selectIndex ?? 0) -
                                                          1));
                                            }
                                            _scrollToIndex(state.selectIndex??0);
                                          });
                                        },
                                        icon: const Icon(Icons.arrow_back),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '${(state.selectIndex ?? 0) + 1}/${questionList.length}',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.arrow_forward),
                                        onPressed: () {
                                          setState(() {
                                            if ((state.selectIndex ?? 0) <
                                                questionList.length - 1) {
                                              bloc.add(NextButtonEvent(
                                                  count:
                                                      (state.selectIndex ?? 0) +
                                                          1));
                                            }
                                            _scrollToIndex(state.selectIndex??0);
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
