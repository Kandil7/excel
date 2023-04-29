import 'package:flutter/material.dart';

import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

List<TextEditingController> MidtermExam1_Q1_controller = [];
List<TextEditingController> MidtermExam1_Q2_controller = [];
List<TextEditingController> MidtermExam1_Q3_controller = [];
List<TextEditingController> MidtermExam1_Q4_controller = [];
List<TextEditingController> MidtermExam1_Q5_controller = [];
List<TextEditingController> MidtermExam1_Q6_controller = [];
List<TextEditingController> MidtermExam1_Q7_controller = [];
List<TextEditingController> MidtermExam1_Q8_controller = [];
List<TextEditingController> MidtermExam1_Q9_controller = [];
List<TextEditingController> MidtermExam1_Q10_controller = [];
List<TextEditingController> MidtermExam2_Q1_controller = [];
List<TextEditingController> MidtermExam2_Q2_controller = [];
List<TextEditingController> MidtermExam2_Q3_controller = [];
List<TextEditingController> MidtermExam2_Q4_controller = [];
List<TextEditingController> MidtermExam2_Q5_controller = [];
List<TextEditingController> MidtermExam2_Q6_controller = [];
List<TextEditingController> MidtermExam2_Q7_controller = [];
List<TextEditingController> MidtermExam2_Q8_controller = [];
List<TextEditingController> MidtermExam2_Q9_controller = [];
List<TextEditingController> MidtermExam2_Q10_controller = [];

List<TextEditingController> MidtermExam1_total_controller = [];
List<TextEditingController> MidtermExam2_total_controller = [];

List<TextEditingController> MidtermExam_total_marks_controller = [];

intiMedtermController(){
  MidtermExam1_Q1_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q1_$index')
  ));
  MidtermExam1_Q2_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q2_$index')
  ));
  MidtermExam1_Q3_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q3_$index')
  ));
  MidtermExam1_Q4_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q4_$index')
  ));
  MidtermExam1_Q5_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q5_$index')
  ));
  MidtermExam1_Q6_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q6_$index')
  ));
  MidtermExam1_Q7_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q7_$index')
  ));
  MidtermExam1_Q8_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q8_$index')
  ));
  MidtermExam1_Q9_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q9_$index')
  ));
  MidtermExam1_Q10_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam1_Q10_$index')
  ));
  MidtermExam2_Q1_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q1_$index')
  ));
  MidtermExam2_Q2_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q2_$index')
  ));
  MidtermExam2_Q3_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q3_$index')
  ));
  MidtermExam2_Q4_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q4_$index')
  ));
  MidtermExam2_Q5_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q5_$index')
  ));
  MidtermExam2_Q6_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q6_$index')
  ));
  MidtermExam2_Q7_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q7_$index')
  ));
  MidtermExam2_Q8_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q8_$index')
  ));
  MidtermExam2_Q9_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q9_$index')
  ));
  MidtermExam2_Q10_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('MidtermExam2_Q10_$index')
  ));
  MidtermExam1_total_controller=List.generate(total, (index) {
    // GetStorageHelper.writeData('MidtermExam1_total_$index', int.parse(MidtermExam1_Q1_controller[index].text) +
    //     int.parse(MidtermExam1_Q2_controller[index].text) +
    //     int.parse(MidtermExam1_Q3_controller[index].text) +
    //     int.parse(MidtermExam1_Q4_controller[index].text) +
    //     int.parse(MidtermExam1_Q5_controller[index].text) +
    //     int.parse(MidtermExam1_Q6_controller[index].text) +
    //     int.parse(MidtermExam1_Q7_controller[index].text) +
    //     int.parse(MidtermExam1_Q8_controller[index].text) +
    //     int.parse(MidtermExam1_Q9_controller[index].text) +
    //     int.parse(MidtermExam1_Q10_controller[index].text))
    //     .toString();
    return TextEditingController(
      text:(
    GetStorageHelper.readData('MidtermExam1_total_$index')
    )
    );
  });
  MidtermExam2_total_controller=List.generate(total, (index) {
    // GetStorageHelper.writeData('MidtermExam2_total_$index',int.parse(MidtermExam2_Q1_controller[index].text) +
    //     int.parse(MidtermExam2_Q2_controller[index].text) +
    //     int.parse(MidtermExam2_Q3_controller[index].text) +
    //     int.parse(MidtermExam2_Q4_controller[index].text) +
    //     int.parse(MidtermExam2_Q5_controller[index].text) +
    //     int.parse(MidtermExam2_Q6_controller[index].text) +
    //     int.parse(MidtermExam2_Q7_controller[index].text) +
    //     int.parse(MidtermExam2_Q8_controller[index].text) +
    //     int.parse(MidtermExam2_Q9_controller[index].text) +
    //     int.parse(MidtermExam2_Q10_controller[index].text)).toString();
    return TextEditingController(
      text:(
          GetStorageHelper.readData('MidtermExam2_total_$index')
      )
  );
  });
  MidtermExam_total_marks_controller=List.generate(total, (index) {
    // GetStorageHelper.writeData('MidtermExam_total_marks_$index',  int.parse(MidtermExam1_total_controller[index].text) +
    //     int.parse(MidtermExam2_total_controller[index].text)).toString();

    return TextEditingController(
      text:(
          GetStorageHelper.readData('MidtermExam_total_marks_$index')
      )

  );

  });


}

initMedtermExamsControllers(){
  for (int i = 0; i < total; i++) {
    MidtermExam1_Q1_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q1_$i')));
    MidtermExam1_Q2_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q2_$i')));
    MidtermExam1_Q3_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q3_$i')));
    MidtermExam1_Q4_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q4_$i')));
    MidtermExam1_Q5_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q5_$i')));
    MidtermExam1_Q6_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q6_$i')));
    MidtermExam1_Q7_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q7_$i')));
    MidtermExam1_Q8_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q8_$i')));
    MidtermExam1_Q9_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q9_$i')));
    MidtermExam1_Q10_controller.add(TextEditingController(text: GetStorageHelper.readData('MidtermExam1_Q10_$i')));
    MidtermExam2_Q1_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q1_$i')));
    MidtermExam2_Q2_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q2_$i')));
    MidtermExam2_Q3_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q3_$i')));
    MidtermExam2_Q4_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q4_$i')));
    MidtermExam2_Q5_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q5_$i')));
    MidtermExam2_Q6_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q6_$i')));
    MidtermExam2_Q7_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q7_$i')));
    MidtermExam2_Q8_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q8_$i')));
    MidtermExam2_Q9_controller .add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q9_$i')));
    MidtermExam2_Q10_controller.add(TextEditingController(text: GetStorageHelper.readData('MidtermExam2_Q10_$i')));


  }
}

calculateMidtermExamTotal(){
  for (int i = 0; i < total; i++) {
    MidtermExam1_total_controller.add(TextEditingController(text: (int.parse(MidtermExam1_Q1_controller[i].text) +
        int.parse(MidtermExam1_Q2_controller[i].text) +
        int.parse(MidtermExam1_Q3_controller[i].text) +
        int.parse(MidtermExam1_Q4_controller[i].text) +
        int.parse(MidtermExam1_Q5_controller[i].text) +
        int.parse(MidtermExam1_Q6_controller[i].text) +
        int.parse(MidtermExam1_Q7_controller[i].text) +
        int.parse(MidtermExam1_Q8_controller[i].text) +
        int.parse(MidtermExam1_Q9_controller[i].text) +
        int.parse(MidtermExam1_Q10_controller[i].text)).toString()));

    MidtermExam2_total_controller.add(TextEditingController(text: (int.parse(MidtermExam2_Q1_controller[i].text) +
        int.parse(MidtermExam2_Q2_controller[i].text) +
        int.parse(MidtermExam2_Q3_controller[i].text) +
        int.parse(MidtermExam2_Q4_controller[i].text) +
        int.parse(MidtermExam2_Q5_controller[i].text) +
        int.parse(MidtermExam2_Q6_controller[i].text) +
        int.parse(MidtermExam2_Q7_controller[i].text) +
        int.parse(MidtermExam2_Q8_controller[i].text) +
        int.parse(MidtermExam2_Q9_controller[i].text) +
        int.parse(MidtermExam2_Q10_controller[i].text)).toString()));

    MidtermExam_total_marks_controller.add(TextEditingController(text: (int.parse(MidtermExam1_total_controller[i].text) +
        int.parse(MidtermExam2_total_controller[i].text)).toString()));
  }
}
initMidTerm(){
  initMedtermExamsControllers();
  calculateMidtermExamTotal();
}