import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garant_tz_1408/data/questions_data/question_data.dart';
import 'package:garant_tz_1408/ui/answer_screen/answer_screen.dart';

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Center(
              child: Icon(
                Icons.question_mark,
                color: Colors.blue,
                size: 60.r,
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
          SizedBox(height: 16.h),
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
                              10))),
                  child: Center(
                    child: const Text(
                      "Qaytish",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {

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
                              10))),
                  child: Center(
                    child: Text(
                      "Yakunlash",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15),
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
  }
}
