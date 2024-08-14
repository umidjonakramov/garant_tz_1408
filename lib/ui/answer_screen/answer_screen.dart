import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garant_tz_1408/ui/home/home_screen.dart';
import 'package:garant_tz_1408/ui/home/home_screen.dart';
import 'package:garant_tz_1408/ui/questions_screen/questions_screen.dart';

class ResultScreen extends StatelessWidget {
  final int trueCount;
  final int falseCount;

  ResultScreen(this.trueCount, this.falseCount);

  @override
  Widget build(BuildContext context) {
    int totalCount = trueCount + falseCount;
    double percentage = (totalCount == 0) ? 0 : (trueCount / totalCount) * 100;
    Color indicatorColor;
    if (percentage >= 90) {
      indicatorColor = Colors.green;
    } else if (percentage >= 50) {
      indicatorColor = Colors.yellow;
    } else {
      indicatorColor = Colors.red;
    }

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // backgroundColor: Colors.grey,
        body: Padding(
          padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 50.h,bottom: 100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        TweenAnimationBuilder<double>(
                          tween: Tween<double>(begin: 0, end: percentage / 100),
                          duration: const Duration(seconds: 1, milliseconds: 500),
                          builder: (context, value, child) {
                            return SizedBox(
                              width: 150,
                              height: 150,
                              child: CircularProgressIndicator(
                                value: value,
                                strokeWidth: 10,
                                backgroundColor: Colors.grey[300],
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(indicatorColor),
                              ),
                            );
                          },
                        ),
                        Text(
                          '${percentage.toStringAsFixed(1)}%',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: indicatorColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                   Center(
                    child: Text(
                      'Yakunlandi',
                      style: TextStyle(fontSize: 22.sp),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Umumiy testlar soni: 20',
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '$trueCount',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                Text('To\'g\'ri javob',
                                    style:
                                        TextStyle(fontSize: 16, color: Colors.green)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '$falseCount',
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                 Text('Noto\'g\'ri javob',
                                    style:
                                        TextStyle(fontSize: 16.sp, color: Colors.red)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer, color: Colors.orange),
                          Text(
                            '00:00',
                            style: TextStyle(fontSize: 15.sp, color: Colors.orange),
                          ),
                          Text(
                            "/",
                            style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                          ),
                          Text(
                            '00:00',
                            style: TextStyle(fontSize: 15.sp, color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const HomeScreen(index: 2)));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding:  EdgeInsets.all(12.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restart_alt,
                              color: Colors.white,
                            ),
                            Text(
                              "Qayta urinish",
                              style: TextStyle(color: Colors.white,fontSize: 18.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: (){
                      SystemNavigator.pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      child: Padding(
                        padding:  EdgeInsets.all(12.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chiqish",
                              style: TextStyle(color: Colors.black,fontSize: 18.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
