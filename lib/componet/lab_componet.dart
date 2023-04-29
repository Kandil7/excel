import 'package:flutter/material.dart';

import '../Excel helper/Excel_service.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

List<TextEditingController> MidLabExam_Q1_controller = [];
List<TextEditingController> MidLabExam_Q2_controller = [];
List<TextEditingController> MidLabExam_Q3_controller = [];
List<TextEditingController> MidLabExam_Q4_controller = [];
List<TextEditingController> MidLabExam_Q5_controller = [];
List<TextEditingController> MidLabExam_Q6_controller = [];
List<TextEditingController> MidLabExam_Q7_controller = [];
List<TextEditingController> FinalLabExam_Q1_controller = [];
List<TextEditingController> FinalLabExam_Q2_controller = [];
List<TextEditingController> FinalLabExam_Q3_controller = [];
List<TextEditingController> FinalLabExam_Q4_controller = [];
List<TextEditingController> FinalLabExam_Q5_controller = [];
List<TextEditingController> FinalLabExam_Q6_controller = [];
List<TextEditingController> FinalLabExam_Q7_controller = [];

List<TextEditingController> MidLabExam_Total_Marks_controller = [];
List<TextEditingController> FinalLabExam_Total_Marks_controller = [];
List <TextEditingController> LabExam_Total_Marks_controller = [];


initlabController(){
  MidLabExam_Q1_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q1_$index')
  ));
  MidLabExam_Q2_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q2_$index')
  ));
  MidLabExam_Q3_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q3_$index')
  ));
  MidLabExam_Q4_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q4_$index')
  ));
  MidLabExam_Q5_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q5_$index')
  ));
  MidLabExam_Q6_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q6_$index')
  ));
  MidLabExam_Q7_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Q7_$index')
  ));
  FinalLabExam_Q1_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q1_$index')
  ));
  FinalLabExam_Q2_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q2_$index')
  ));
  FinalLabExam_Q3_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q3_$index')
  ));
  FinalLabExam_Q4_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q4_$index')
  ));
  FinalLabExam_Q5_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q5_$index')
  ));
  FinalLabExam_Q6_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q6_$index')
  ));
  FinalLabExam_Q7_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Q7_$index')
  ));
  MidLabExam_Total_Marks_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidLabExam_Total_Marks_$index')
  ));
  FinalLabExam_Total_Marks_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalLabExam_Total_Marks_$index')
  ));
  LabExam_Total_Marks_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('LabExam_Total_Marks_$index')
  ));
}


initLabExamsControllers(){
  for (int i = 0; i < total; i++) {
   MidLabExam_Q1_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q1_$i')));
   MidLabExam_Q2_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q2_$i')));
   MidLabExam_Q3_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q3_$i')));
   MidLabExam_Q4_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q4_$i')));
   MidLabExam_Q5_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q5_$i')));
   MidLabExam_Q6_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q6_$i')));
   MidLabExam_Q7_controller .add(TextEditingController(text: GetStorageHelper.readData('MidLabExam_Q7_$i')));
    FinalLabExam_Q1_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q1_$i')));
    FinalLabExam_Q2_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q2_$i')));
    FinalLabExam_Q3_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q3_$i')));
    FinalLabExam_Q4_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q4_$i')));
    FinalLabExam_Q5_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q5_$i')));
    FinalLabExam_Q6_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q6_$i')));
    FinalLabExam_Q7_controller .add(TextEditingController(text: GetStorageHelper.readData('FinalLabExam_Q7_$i')));

  }
}
CalculateLabExamTotalMarks(){
  for (int i = 0; i < total; i++) {
    MidLabExam_Total_Marks_controller.add(TextEditingController(text: (double.parse(MidLabExam_Q1_controller[i].text)+
        double.parse(MidLabExam_Q2_controller[i].text)+
        double.parse(MidLabExam_Q3_controller[i].text)+
        double.parse(MidLabExam_Q4_controller[i].text)+
        double.parse(MidLabExam_Q5_controller[i].text)+
        double.parse(MidLabExam_Q6_controller[i].text)+
        double.parse(MidLabExam_Q7_controller[i].text)).toStringAsFixed(2)));
    FinalLabExam_Total_Marks_controller.add(TextEditingController(text: (double.parse(FinalLabExam_Q1_controller[i].text)+
        double.parse(FinalLabExam_Q2_controller[i].text)+
        double.parse(FinalLabExam_Q3_controller[i].text)+
        double.parse(FinalLabExam_Q4_controller[i].text)+
        double.parse(FinalLabExam_Q5_controller[i].text)+
        double.parse(FinalLabExam_Q6_controller[i].text)+
        double.parse(FinalLabExam_Q7_controller[i].text)).toStringAsFixed(2)));
    LabExam_Total_Marks_controller.add(TextEditingController(text: (double.parse(MidLabExam_Total_Marks_controller[i].text)+
        double.parse(FinalLabExam_Total_Marks_controller[i].text)).toStringAsFixed(2)));
  }
}
var cellindex;
GetLabsDataFromExcel()async{
  for (var i = 0; i < total; i++) {
    for (var j = 0; j < 3; j++) {
      cellindex = ExcelHelper.convertToCellReference((j+19), (i + 31));

      await ExcelHelper.readCell('MidTermExams', cellindex).then((
          value) {
        if (j == 0) {
          LabExam_Total_Marks_controller[i].text = value;
        }
        else if (j == 1) {
          MidLabExam_Total_Marks_controller[i].text = value;
        }
        else if (j == 2) {
          MidLabExam_Total_Marks_controller[i].text = value;
        }
      }
      );
    }

  }
}

initLabs()async{
  initLabExamsControllers();
  await GetLabsDataFromExcel();
}
