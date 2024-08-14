
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garant_tz_1408/ui/answer_screen/answer_screen.dart';
import 'package:garant_tz_1408/ui/questions_screen/questions_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.index,
    super.key});
  final int index;

  @override
  State<HomeScreen> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<HomeScreen> {
  int _selectedIndex = 2;
  static  TextStyle optionStyle =
  TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    ResultScreen(0, 0),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    QuestionsScreen(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: widget.index,
        selectedItemColor: Colors.blueAccent,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.sp
        ),
        onTap: _onItemTapped,
      ),
    );
  }
}
