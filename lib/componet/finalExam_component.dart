import 'package:flutter/material.dart';

import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

List<TextEditingController> FinalExam_Q1_controller = [];
List<TextEditingController> FinalExam_Q2_controller = [];
List<TextEditingController> FinalExam_Q3_controller = [];
List<TextEditingController> FinalExam_Q4_controller = [];
List<TextEditingController> FinalExam_Q5_controller = [];
List<TextEditingController> FinalExam_Q6_controller = [];
List<TextEditingController> FinalExam_Q7_controller = [];
List<TextEditingController> FinalExam_Q8_controller = [];
List<TextEditingController> FinalExam_Q9_controller = [];
List<TextEditingController> FinalExam_Q10_controller = [];
List<TextEditingController> FinalExam_Q11_controller = [];
List<TextEditingController> FinalExam_Q12_controller = [];
List<TextEditingController> FinalExam_Q13_controller = [];
List<TextEditingController> FinalExam_Q14_controller = [];
List<TextEditingController> FinalExam_Q15_controller = [];

List <TextEditingController> FinalExam_Total_Marks_controller = [];

initFinalController(){
  FinalExam_Q1_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q1_$index')
  ));
  FinalExam_Q2_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q2_$index')
  ));
  FinalExam_Q3_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q3_$index')
  ));
  FinalExam_Q4_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q4_$index')
  ));
  FinalExam_Q5_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q5_$index')
  ));
  FinalExam_Q6_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q6_$index')
  ));
  FinalExam_Q7_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q7_$index')
  ));
  FinalExam_Q8_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q8_$index')
  ));
  FinalExam_Q9_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q9_$index')
  ));
  FinalExam_Q10_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q10_$index')
  ));
  FinalExam_Q11_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q11_$index')
  ));
  FinalExam_Q12_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q12_$index')
  ));
  FinalExam_Q13_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q13_$index')
  ));
  FinalExam_Q14_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q14_$index')
  ));
  FinalExam_Q15_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Q15_$index')
  ));
  FinalExam_Total_Marks_controller=List.generate(total, (index) {
    // GetStorageHelper.writeData('FinalExam_Total_Marks_$index', (int.parse(FinalExam_Q1_controller[index].text) +
    //     int.parse(FinalExam_Q2_controller[index].text) +
    //     int.parse(FinalExam_Q3_controller[index].text) +
    //     int.parse(FinalExam_Q4_controller[index].text) +
    //     int.parse(FinalExam_Q5_controller[index].text) +
    //     int.parse(FinalExam_Q6_controller[index].text) +
    //     int.parse(FinalExam_Q7_controller[index].text) +
    //     int.parse(FinalExam_Q8_controller[index].text) +
    //     int.parse(FinalExam_Q9_controller[index].text) +
    //     int.parse(FinalExam_Q10_controller[index].text) +
    //     int.parse(FinalExam_Q11_controller[index].text) +
    //     int.parse(FinalExam_Q12_controller[index].text) +
    //     int.parse(FinalExam_Q13_controller[index].text) +
    //     int.parse(FinalExam_Q14_controller[index].text) +
    //     int.parse(FinalExam_Q15_controller[index].text)));
    return TextEditingController(
      text: GetStorageHelper.readData('FinalExam_Total_Marks_$index')
  );
  });

}

initFinalExamsControllers(){
  for (int i = 0; i < total; i++) {
    FinalExam_Q1_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q1_$i')));
    FinalExam_Q2_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q2_$i')));
    FinalExam_Q3_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q3_$i')));
    FinalExam_Q4_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q4_$i')));
    FinalExam_Q5_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q5_$i')));
    FinalExam_Q6_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q6_$i')));
    FinalExam_Q7_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q7_$i')));
    FinalExam_Q8_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q8_$i')));
    FinalExam_Q9_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q9_$i')));
    FinalExam_Q10_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q10_$i')));
    FinalExam_Q11_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q11_$i')));
    FinalExam_Q12_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q12_$i')));
    FinalExam_Q13_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q13_$i')));
    FinalExam_Q14_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q14_$i')));
    FinalExam_Q15_controller.add(TextEditingController(
        text: GetStorageHelper.readData('FinalExam_Q15_$i')));
  }
}
calculatTotalMarks(){
  for (int i = 0; i < total; i++) {
    FinalExam_Total_Marks_controller.add(TextEditingController(
        text: (int.parse(FinalExam_Q1_controller[i].text) +
                int.parse(FinalExam_Q2_controller[i].text) +
                int.parse(FinalExam_Q3_controller[i].text) +
                int.parse(FinalExam_Q4_controller[i].text) +
                int.parse(FinalExam_Q5_controller[i].text) +
                int.parse(FinalExam_Q6_controller[i].text) +
                int.parse(FinalExam_Q7_controller[i].text) +
                int.parse(FinalExam_Q8_controller[i].text) +
                int.parse(FinalExam_Q9_controller[i].text) +
                int.parse(FinalExam_Q10_controller[i].text) +
                int.parse(FinalExam_Q11_controller[i].text) +
                int.parse(FinalExam_Q12_controller[i].text) +
                int.parse(FinalExam_Q13_controller[i].text) +
                int.parse(FinalExam_Q14_controller[i].text) +
                int.parse(FinalExam_Q15_controller[i].text))
            .toString()));
  }


}

initFinalExam(){
  initFinalExamsControllers();
  calculatTotalMarks();
}
