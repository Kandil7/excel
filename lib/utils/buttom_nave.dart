import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:excel/ui_screens/assignments.dart';
import 'package:excel/ui_screens/clo_report.dart';
import 'package:excel/ui_screens/clos.dart';
import 'package:excel/ui_screens/final_exam.dart';
import 'package:excel/ui_screens/labs.dart';
import 'package:excel/ui_screens/midterm_exams.dart';
import 'package:excel/ui_screens/plo_acheivement_report.dart';
import 'package:excel/ui_screens/queizs.dart';
import 'package:excel/ui_screens/student.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }


  late PageController pageController;
  var BottomNavigationBarKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.purple,
        key: BottomNavigationBarKey,
        currentIndex: _tabIndex,
        onTap: (v) {
          tabIndex = v;
          pageController.animateToPage(v,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
        },
        items:  [

          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Students'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'CLOs'),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quizzes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), label: 'Assignments'),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz), label: 'MidTermExams'),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz), label: 'FinalExam'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_label_sharp), label: 'Labs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.report), label: 'PLOAcheivementReport'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'CLOReport'),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },


        children: [
          DataTable2SimpleDemo(),
          clos(),
          Quiz(),
          Assignments(),
          MidTermExams(),
          FinalExam(),
          labs(),
          CloReport(),
          plo(),

        ],
      ),
    );
  }
}