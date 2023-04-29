
import 'package:flutter/material.dart';

import '../Excel helper/Excel_service.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

late var CLO1_Achievment_Report_controller;
late var CLO2_Achievment_Report_controller;
late var CLO3_Achievment_Report_controller;
late var CLO4_Achievment_Report_controller;
late var CLO5_Achievment_Report_controller;
late var CLO6_Achievment_Report_controller;
late var CLO7_Achievment_Report_controller;
late var CLO8_Achievment_Report_controller;
late var CLO9_Achievment_Report_controller;
late var CLO10_Achievment_Report_controller;
late var CLO_Total_Achievment_Report_controller;

initCLOControllers(){
  CLO1_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO1_Achievment_Report_$index'))
  );
  CLO2_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO2_Achievment_Report_$index'))
  );
  CLO3_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO3_Achievment_Report_$index'))
  );
  CLO4_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO4_Achievment_Report_$index'))
  );
  CLO5_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO5_Achievment_Report_$index'))
  );
  CLO6_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO6_Achievment_Report_$index'))
  );
  CLO7_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO7_Achievment_Report_$index'))
  );
  CLO8_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO8_Achievment_Report_$index'))
  );
  CLO9_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO9_Achievment_Report_$index'))
  );
  CLO10_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO10_Achievment_Report_$index'))
  );
  CLO_Total_Achievment_Report_controller=List.generate(total, (index) => TextEditingController(
      text: GetStorageHelper.readData('CLO_Total_Achievment_Report_$index'))
  );
}

getCLODataFromExcel()async{
  for (var i = 0; i < total; i++) {
    for (var j = 0; j < 12; j++) {
      var cellindex = ExcelHelper.convertToCellReference((j+3), (i + 14));

      await ExcelHelper.readCell('CLO Acheivement Report', cellindex).then((
          value) {
        switch (j) {
          case 0:
            CLO1_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO1_Achievment_Report_$i', value);
            break;
          case 1:
            CLO2_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO2_Achievment_Report_$i', value);
            break;

          case 2:
            CLO3_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO3_Achievment_Report_$i', value);
            break;

          case 3:
            CLO4_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO4_Achievment_Report_$i', value);
            break;

case 4:
            CLO5_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO5_Achievment_Report_$i', value);
            break;
case 5:
            CLO6_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO6_Achievment_Report_$i', value);
            break;

case 6:
            CLO7_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO7_Achievment_Report_$i', value);
            break;

case 7:
            CLO8_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO8_Achievment_Report_$i', value);
            break;

case 8:
            CLO9_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO9_Achievment_Report_$i', value);
            break;

case 9:

            CLO10_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO10_Achievment_Report_$i', value);
            break;

case 10:

            CLO_Total_Achievment_Report_controller[i].text = value;
            GetStorageHelper.writeData('CLO_Total_Achievment_Report_$i', value);
            break;

          default:
            break;

                    }




      });
    }
  }
}

initCLOData()async{
  await getCLODataFromExcel();
  initCLOControllers();
}