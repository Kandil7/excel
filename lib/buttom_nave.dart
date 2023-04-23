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

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: CircleNavBar(
          activeIcons: const [
            Icon(Icons.person, color: Colors.deepPurple),
            Icon(Icons.person, color: Colors.deepPurple),
            Icon(Icons.quiz, color: Colors.deepPurple),
            Icon(Icons.assessment, color: Colors.deepPurple),
            Icon(Icons.quiz, color: Colors.deepPurple),
            Icon(Icons.quiz, color: Colors.deepPurple),
            Icon(Icons.video_label_sharp, color: Colors.deepPurple),
            Icon(Icons.report, color: Colors.deepPurple),
            Icon(Icons.book, color: Colors.deepPurple),
          ],
          inactiveIcons: const [
            Text("Students",style: TextStyle(color: Colors.white),),
            Text("CLOs",style: TextStyle(color: Colors.white),),
            Text("Quizzes",style: TextStyle(color: Colors.white),),
            Text("Assignments",style: TextStyle(color: Colors.white),),
            Text("MidTermExams",style: TextStyle(color: Colors.white),),
            Text("FinalExam",style: TextStyle(color: Colors.white),),
            Text("Labs",style: TextStyle(color: Colors.white),),
            Text("CLO Acheivement Report",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("PLO Acheivement Report",style: TextStyle(color: Colors.white,fontSize: 10),),

          ],
          color: AppColors.menuBackground,
          height: 50,
          circleWidth: 50,
          activeIndex: tabIndex,
          onTap: (index) {
            tabIndex = index;
            pageController.jumpToPage(tabIndex);
          },
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          shadowColor: Colors.deepPurple,
          elevation: 10,
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
      ),
    );
  }
}