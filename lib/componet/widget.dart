import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../storage_helper/get_storage_helper.dart';

Widget customDropMenu({
  required TextEditingController controller,
  required String label,
  required String dataValue,
  required String cell,
}) {
  return Column(
    children: [
      Text(label),
      DropdownMenu(
        controller: controller,
        onSelected: (value) async {
          if(value!=null){
          GetStorageHelper.writeData(dataValue, value);
          await ExcelHelper.updateCell('CLOs', cell, value.toString());}
        },

        initialSelection: GetStorageHelper.readData(dataValue),
        width: 95,
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: 'Yes',
            label: 'Yes',
          ),
          DropdownMenuEntry(
            value: 'No',
            label: ' No',
          ),
        ],
      )
    ],
  );
}
//
// Widget QuizeCell(
// {
//   required dynamic controllers,
//   required List label,
//   required List dataValue,
//   required dynamic index
//
// }
//     ){
//   return Row(
//     children: [
//       QCell(controller: controllers[index],
//       label: label[0],
//       dataValue: dataValue[0],
//         index: index
//
//       ),
//
//       SizedBox(width: 8,),
//       QCell(controller: controllers[1],
//       label: label[1],
//       dataValue: dataValue[1],
//           index: index
//       ),
//       SizedBox(width: 8,),
//       QCell(controller: controllers[2],
//       label: label[2],
//       dataValue: dataValue[2],
//           index: index
//       ),
//       SizedBox(width: 8,),
//       QCell(controller: controllers[3],
//       label: label[3],
//       dataValue: dataValue[3],
//           index: index
//       ),
//       SizedBox(width: 8,),
//       QCell(controller: controllers[4],
//       label: label[4],
//       dataValue: dataValue[4],
//           index: index
//       ),
//
//       SizedBox(width: 10,),
//
//
//
//     ],
//   );
// }
// Widget QCell(
// {
//   required dynamic controller,
//   required String label,
//   required String dataValue,
//    dynamic index
//
//
// }
//     ){
//   return  Column(
//
//     children:  [
//       Text(label),
//       Container(
//         width: 40,
//         height: 20,
//         child: TextFormField(
//           controller: controller,
//           onChanged: (value) {
//
//             GetStorageHelper.writeData(
//                 '$dataValue', value);
//           },
//
//
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//       )
//
//     ],
//   );
// }


