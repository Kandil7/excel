import 'package:flutter/material.dart';

import '../Excel helper/Excel_service.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

List<TextEditingController> Assign1_Q1_controller = [];
List<TextEditingController> Assign1_Q2_controller = [];
List<TextEditingController> Assign1_Q3_controller = [];
List<TextEditingController> Assign1_Q4_controller = [];
List<TextEditingController> Assign1_Q5_controller = [];

List<TextEditingController> Assign2_Q1_controller = [];
List<TextEditingController> Assign2_Q2_controller = [];
List<TextEditingController> Assign2_Q3_controller = [];
List<TextEditingController> Assign2_Q4_controller = [];
List<TextEditingController> Assign2_Q5_controller = [];

List<TextEditingController> Assign3_Q1_controller = [];
List<TextEditingController> Assign3_Q2_controller = [];
List<TextEditingController> Assign3_Q3_controller = [];
List<TextEditingController> Assign3_Q4_controller = [];
List<TextEditingController> Assign3_Q5_controller = [];

List<TextEditingController> Assign4_Q1_controller = [];
List<TextEditingController> Assign4_Q2_controller = [];
List<TextEditingController> Assign4_Q3_controller = [];
List<TextEditingController> Assign4_Q4_controller = [];
List<TextEditingController> Assign4_Q5_controller = [];

List<TextEditingController> Assign1_total_controller = [];
List<TextEditingController> Assign2_total_controller = [];
List<TextEditingController> Assign3_total_controller = [];
List<TextEditingController> Assign4_total_controller = [];

List<TextEditingController> Assign_total_marks_controller = [];

// initAssignsControllers(){
//   for (int i = 0; i < total; i++) {
//     Assign1_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign1_Q1_$i')));
//     Assign1_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign1_Q2_$i')));
//     Assign1_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign1_Q3_$i')));
//     Assign1_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign1_Q4_$i')));
//     Assign1_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign1_Q5_$i')));
//     Assign2_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign2_Q1_$i')));
//     Assign2_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign2_Q2_$i')));
//     Assign2_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign2_Q3_$i')));
//     Assign2_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign2_Q4_$i')));
//     Assign2_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign2_Q5_$i')));
//     Assign3_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign3_Q1_$i')));
//     Assign3_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign3_Q2_$i')));
//     Assign3_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign3_Q3_$i')));
//     Assign3_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign3_Q4_$i')));
//     Assign3_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign3_Q5_$i')));
//     Assign4_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign4_Q1_$i')));
//     Assign4_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign4_Q2_$i')));
//     Assign4_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign4_Q3_$i')));
//     Assign4_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign4_Q4_$i')));
//     Assign4_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Assign4_Q5_$i')));
//
//
//   }
// }
initAssignsControllers(){
  Assign1_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_Q1_$index')));
  Assign1_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_Q2_$index')));
  Assign1_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_Q3_$index')));
  Assign1_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_Q4_$index')));
  Assign1_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_Q5_$index')));
  Assign2_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_Q1_$index')));
  Assign2_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_Q2_$index')));
  Assign2_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_Q3_$index')));
  Assign2_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_Q4_$index')));
  Assign2_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_Q5_$index')));
  Assign3_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_Q1_$index')));
  Assign3_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_Q2_$index')));
  Assign3_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_Q3_$index')));
  Assign3_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_Q4_$index')));
  Assign3_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_Q5_$index')));

  Assign4_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_Q1_$index')));
  Assign4_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_Q2_$index')));
  Assign4_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_Q3_$index')));
  Assign4_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_Q4_$index')));
  Assign4_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_Q5_$index')));
  Assign1_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign1_total_$index')));
  Assign2_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign2_total_$index')));
  Assign3_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign3_total_$index')));
  Assign4_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign4_total_$index')));
  Assign_total_marks_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Assign_total_marks_$index')));

}

calculatAssignTotal(){
  for (int i = 0; i < total; i++) {
    Assign1_total_controller.add(TextEditingController(text: (int.parse(Assign1_Q1_controller[i].text)+int.parse(Assign1_Q2_controller[i].text)+int.parse(Assign1_Q3_controller[i].text)+int.parse(Assign1_Q4_controller[i].text)+int.parse(Assign1_Q5_controller[i].text)).toString()));
    Assign2_total_controller.add(TextEditingController(text: (int.parse(Assign2_Q1_controller[i].text)+int.parse(Assign2_Q2_controller[i].text)+int.parse(Assign2_Q3_controller[i].text)+int.parse(Assign2_Q4_controller[i].text)+int.parse(Assign2_Q5_controller[i].text)).toString()));
    Assign3_total_controller.add(TextEditingController(text: (int.parse(Assign3_Q1_controller[i].text)+int.parse(Assign3_Q2_controller[i].text)+int.parse(Assign3_Q3_controller[i].text)+int.parse(Assign3_Q4_controller[i].text)+int.parse(Assign3_Q5_controller[i].text)).toString()));
    Assign4_total_controller.add(TextEditingController(text: (int.parse(Assign4_Q1_controller[i].text)+int.parse(Assign4_Q2_controller[i].text)+int.parse(Assign4_Q3_controller[i].text)+int.parse(Assign4_Q4_controller[i].text)+int.parse(Assign4_Q5_controller[i].text)).toString()));
    Assign_total_marks_controller.add(TextEditingController(text: (int.parse(Assign1_total_controller[i].text)+int.parse(Assign2_total_controller[i].text)+int.parse(Assign3_total_controller[i].text)+int.parse(Assign4_total_controller[i].text)).toString()));

  }
}
var cellindex;
getTotal()async {
  for (var i = 0; i < total; i++) {
    for (var j = 0; j < 3; j++) {
      cellindex = ExcelHelper.convertToCellReference((j+5), (i + 31));
      await ExcelHelper.readCell('Assignments',cellindex).then((value) {
        if(value == null || value == ''|| value .isEmpty){
          value = '0';
        }
        if (j == 0) {
          Assign_total_marks_controller[i].text = value;
        }
        if (j == 1) {
          Assign1_total_controller[i].text = value;
        }
        if (j == 2) {
          Assign2_total_controller[i].text = value;
        }
        if (j == 3) {
          Assign3_total_controller[i].text = value;
        }
        if (j == 4) {
          Assign4_total_controller[i].text = value;
        }
      });
}
  }
}

initAssignment() async {
  initAssignsControllers();
  await getTotal();
}
