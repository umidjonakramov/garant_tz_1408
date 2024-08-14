import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garant_tz_1408/ui/home/home_screen.dart';
import 'package:garant_tz_1408/ui/home/home_screen.dart';
import 'package:garant_tz_1408/ui/questions_screen/questions_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(index: 2,),
      ),
    );
  }
}
