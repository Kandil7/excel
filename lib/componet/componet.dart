import 'package:flutter/material.dart';

import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

late var  StudentNameController;
late var StudentIdController;
late var DescriptionController;



late var K1_controller;
late var K2_controller;
late var K3_controller;

late var S1_controller;
late var S2_controller;
late var S3_controller;
late var S4_controller;
late var S5_controller;

late var V1_controller;
late var V2_controller;
late var V3_controller;


// late var Queize1_Q1_controller;
// late var Queize1_Q2_controller;
// late var Queize1_Q3_controller;
// late var Queize1_Q4_controller;
// late var Queize1_Q5_controller;

// late var Queize2_Q1_controller;
// late var Queize2_Q2_controller;
// late var Queize2_Q3_controller;
// late var Queize2_Q4_controller;
// late var Queize2_Q5_controller;

// late var Queize3_Q1_controller;
// late var Queize3_Q2_controller;
// late var Queize3_Q3_controller;
// late var Queize3_Q4_controller;
// late var Queize3_Q5_controller;
//
// late var Queize4_Q1_controller;
// late var Queize4_Q2_controller;
// late var Queize4_Q3_controller;
// late var Queize4_Q4_controller;
// late var Queize4_Q5_controller;


var totalMarks;
var totalQuize1;
var totalQuize2;
var totalQuize3;
var totalQuize4;
calculateTotalQuizes(){
  for(int i=0;i<total;i++){
    totalQuize1[i]=0;
    totalQuize2[i]=0;
    totalQuize3[i]=0;
    totalQuize4[i]=0;
    for(int j=0;j<5;j++){
      totalQuize1[i]+=GetStorageHelper.readData('Quize1_Q${j+1}_$i') ?? 0;
      totalQuize2[i]+=GetStorageHelper.readData('Quize2_Q${j+1}_$i') ?? 0;
      totalQuize3[i]+=GetStorageHelper.readData('Quize3_Q${j+1}_$i') ?? 0;
      totalQuize4[i]+=GetStorageHelper.readData('Quize4_Q${j+1}_$i') ?? 0;
    }
    totalMarks[i]=totalQuize1[i]+totalQuize2[i]+totalQuize3[i]+totalQuize4[i];
  }



  // totalQuize1[index] =GetStorageHelper.readData('Quize1_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize1_Q2_$index') ?? 0 + GetStorageHelper.readData('Quize1_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize1_Q2_$index') ?? 0+ GetStorageHelper.readData('Quize1_Q3_$index') ?? 0 + GetStorageHelper.readData('Quize1_Q4_$index') ?? 0+ GetStorageHelper.readData('Quiz1_Q5_$index');
  // totalQuize2[index] =GetStorageHelper.readData('Quize2_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize2_Q2_$index') ?? 0 + GetStorageHelper.readData('Quize2_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize2_Q2_$index') ?? 0+ GetStorageHelper.readData('Quize2_Q3_$index') ?? 0 + GetStorageHelper.readData('Quize2_Q4_$index') ?? 0+ GetStorageHelper.readData('Quiz2_Q5_$index');
  // totalQuize3[index] =GetStorageHelper.readData('Quize3_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize3_Q2_$index') ?? 0 + GetStorageHelper.readData('Quize3_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize3_Q2_$index') ?? 0+ GetStorageHelper.readData('Quize3_Q3_$index') ?? 0 + GetStorageHelper.readData('Quize3_Q4_$index') ?? 0+ GetStorageHelper.readData('Quiz3_Q5_$index');
  // totalQuize4[index] =GetStorageHelper.readData('Quize4_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize4_Q2_$index') ?? 0 + GetStorageHelper.readData('Quize4_Q1_$index') ?? 0 + GetStorageHelper.readData('Quize4_Q2_$index') ?? 0+ GetStorageHelper.readData('Quize4_Q3_$index') ?? 0 + GetStorageHelper.readData('Quize4_Q4_$index') ?? 0+ GetStorageHelper.readData('Quiz4_Q5_$index');
  // totalMarks[index] = totalQuize1[index] + totalQuize2[index] + totalQuize3[index] + totalQuize4[index];
}


// initQueize(){
//   Queize1_Q1_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize1_Q1_$index')
//   ));
//   Queize1_Q2_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize1_Q2_$index')
//   ));
//   Queize1_Q3_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize1_Q3_$index')
//   ));
//   Queize1_Q4_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize1_Q4_$index')
//   ));
//   Queize1_Q5_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize1_Q5_$index')
//   ));
//
//   Queize2_Q1_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize2_Q1_$index')
//   ));
//   Queize2_Q2_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize2_Q2_$index')
//   ));
//   Queize2_Q3_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize2_Q3_$index')
//   ));
//   Queize2_Q4_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize2_Q4_$index')
//   ));
//   Queize2_Q5_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize2_Q5_$index')
//   ));
//
//   Queize3_Q1_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize3_Q1_$index')
//   ));
//   Queize3_Q2_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize3_Q2_$index')
//   ));
//   Queize3_Q3_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize3_Q3_$index')
//   ));
//   Queize3_Q4_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize3_Q4_$index')
//   ));
//   Queize3_Q5_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize3_Q5_$index')
//   ));
//
// Queize4_Q1_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize4_Q1_$index')
//   ));
//   Queize4_Q2_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize4_Q2_$index')
//   ));
//   Queize4_Q3_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize4_Q3_$index')
//   ));
//   Queize4_Q4_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize4_Q4_$index')
//   ));
//   Queize4_Q5_controller=List.generate(total, (index) => TextEditingController(
//       text: GetStorageHelper.readData('Queize4_Q5_$index')
//   ));
//
//
//
// }













initScreen(){
  StudentNameController=List.generate(total, (index) =>TextEditingController(
      text: GetStorageHelper.readData('StudentName_$index')
  ));
  StudentIdController=List.generate(total, (index) =>TextEditingController(
      text: GetStorageHelper.readData('StudentID_$index')
  ));
}

initDescription(){
  DescriptionController=List.generate(CLO_total, (index) => TextEditingController(
    text: GetStorageHelper.readData('Description_CLO_$index')
  ));
}

initKnowledge(){
  K1_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K1_$index'))
  );
  K2_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K2_$index'))
  );
  K3_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('K3_$index'))
  );


}

initSkills(){

  S1_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S1_$index'))
  );

  S2_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S2_$index'))
  );
  S3_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S3_$index'))
  );
  S4_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S4_$index'))
  );
  S5_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('S5_$index'))
  );
}

initValue(){
  V1_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V1_$index'))
  );
  V2_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V2_$index'))
  );
  V3_controller=List.generate(CLO_total, (index) => TextEditingController(
      text: GetStorageHelper.readData('V3_$index'))
  );
}

initCLOS(){
  initDescription();
  initKnowledge();
  initSkills();
  initValue();
}

initAll(){
  initScreen();
  initCLOS();
}

