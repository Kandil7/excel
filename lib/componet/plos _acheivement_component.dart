import 'package:flutter/material.dart';

import '../Excel helper/Excel_service.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

late var Description_PLOs_Controller;
late var K1_PLOs_Achievment_Report_controller;
late var K2_PLOs_Achievment_Report_controller;
late var K3_PLOs_Achievment_Report_controller;

late var S1_PLOs_Achievment_Report_controller;
late var S2_PLOs_Achievment_Report_controller;
late var S3_PLOs_Achievment_Report_controller;
late var S4_PLOs_Achievment_Report_controller;
late var S5_PLOs_Achievment_Report_controller;

late var V1_PLOs_Achievment_Report_controller;
late var V2_PLOs_Achievment_Report_controller;
late var V3_PLOs_Achievment_Report_controller;

initCotrollers(){
  Description_PLOs_Controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('Description_PLOs_$index'))
  );
  K1_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K1_PLOs_Achievment_Report_$index'))
  );
  K2_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K2_PLOs_Achievment_Report_$index'))
  );
  K3_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K3_PLOs_Achievment_Report_$index'))
  );
}

initCotrollers2(){
  S1_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S1_PLOs_Achievment_Report_$index'))
  );
  S2_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S2_PLOs_Achievment_Report_$index'))
  );
  S3_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S3_PLOs_Achievment_Report_$index'))
  );
  S4_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S4_PLOs_Achievment_Report_$index'))
  );
  S5_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S5_PLOs_Achievment_Report_$index'))
  );
}

initCotrollers3(){
  V1_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V1_PLOs_Achievment_Report_$index'))
  );
  V2_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V2_PLOs_Achievment_Report_$index'))
  );
  V3_PLOs_Achievment_Report_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V3_PLOs_Achievment_Report_$index'))
  );
}
var cellindex;
getDataFromExcel()async {
  // ExcelHelper.readCell('CLO Acheivement Report','F${(i+j).toString()}');

  for (var i = 0; i < CLO_total; i++) {
    for (var j = 0; j < 12; j++) {
      var cellindex = ExcelHelper.convertToCellReference((j+3), (i + 14));

      await ExcelHelper.readCell('CLO Acheivement Report', cellindex).then((
          value) {
        if (j == 0) {
          Description_PLOs_Controller[i].text = value;
        }
        else if (j == 1) {
          K1_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 2) {
          K2_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 3) {
          K3_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 4) {
          S1_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 5) {
          S2_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 6) {
          S3_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 7) {
          S4_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 8) {
          S5_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 9) {
          V1_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 10) {
          V2_PLOs_Achievment_Report_controller[i].text = value;
        }
        else if (j == 11) {
          V3_PLOs_Achievment_Report_controller[i].text = value;
        }
      });
    }
  }
}


initPloData()async{
  await getDataFromExcel();
  initCotrollers();
  initCotrollers2();
  initCotrollers3();


}

initPloData2() {
  initCotrollers();
  initCotrollers2();
  initCotrollers3();
}