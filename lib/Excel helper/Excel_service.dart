// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_xlsio/xlsio.dart';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:open_file/open_file.dart';
// import 'package:universal_html/html.dart' show AnchorElement;
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'dart:convert';
//
//
// Future<void> createExcel() async {
//   final Workbook workbook = Workbook();
//   final Worksheet sheet = workbook.worksheets[0];
//   sheet.getRangeByName('A1').setText('Hello World!');
//   final List<int> bytes = workbook.saveAsStream();
//   workbook.dispose();
//
//   if (kIsWeb) {
//     AnchorElement(
//         href:
//         'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
//       ..setAttribute('download', 'Output.xlsx')
//       ..click();
//   } else {
//     final String path = (await getApplicationSupportDirectory()).path;
//     final String fileName =
//     Platform.isWindows ? '$path\\Output.xlsx' : '$path/Output.xlsx';
//     final File file = File(fileName);
//     await file.writeAsBytes(bytes, flush: true);
//     OpenFile.open(fileName);
//   }
// }
//
// // ExcelFileFromAsset() async {
// //   final Workbook workbook = Workbook();
// //   final Worksheet sheet = workbook.worksheets[0];
// //   sheet.getRangeByName('A1').setText('Hello World!');
// //   final List<int> bytes = workbook.saveAsStream();
// //   workbook.dispose();
// //
// //   if (kIsWeb) {
// //     AnchorElement(
// //         href:
// //         'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
// //       ..setAttribute('download', 'Output.xlsx')
// //       ..click();
// //   } else {
// //     final String path = (await getApplicationSupportDirectory()).path;
// //     final String fileName =
// //     Platform.isWindows ? '$path\\Output.xlsx' : '$path/Output.xlsx';
// //     final File file = File(fileName);
// //     await file.writeAsBytes(bytes, flush: true);
// //     OpenFile.open(fileName);
// //   }
// //
// // }
// import 'package:flutter/services.dart';
// import 'package:flutter_excel/flutter_excel.dart';
//
// ByteData data = await rootBundle.load('assets/Excel_file.xlsx');
// List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
// Excel file = await Excel.decodeBytes(bytes);
// ExcelWorksheet sheet = file['Sheet1'];
// sheet.cell('A1').value = 'New Value';
// List<int> updatedBytes = file.encode();


import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_excel/excel.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'Gsheet_helper.dart';

class ExcelHelper {


  static Future<void> saveExcel( String filePath) async {
    ByteData data = await rootBundle.load('assets/Excel_file_2.xlsx');
    List<int>? bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
     bytes = excel.encode();
    File file = File(filePath);
    await file.writeAsBytes(bytes!);
  }

  // static Future<void> updateCell( String sheetName, String cell, String value) async {

  // }

  static Future<void> updateCell(
      String sheetName, String cell, String value) async {
    final cellReference = cell;
    final column = cellReference.substring(0, 1).toUpperCase().codeUnitAt(0) - 65;
    final row = int.parse(cellReference.substring(1)) - 1;
   await GSheetHelper().updateCellValue(sheetName, row+1, column+1, value);
    ByteData data = await rootBundle.load('assets/Excel_file_2.xlsx');
    List<int>? bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
    bytes = excel.encode();
    var sheet = excel[sheetName];
    sheet.cell(CellIndex.indexByString(cell)).value = value;
    bytes = excel.encode();
    File file = File('assets/Excel_file_2.xlsx');
    await file.writeAsBytes(bytes!);


  }





  static Future<String> readCell(
      String sheetName, String cell
      ) async {
    final cellReference = cell;
    final column = cellReference.substring(0, 1).toUpperCase().codeUnitAt(0) - 65;
    final row = int.parse(cellReference.substring(1)) - 1;
    return await GSheetHelper().getCellValue(
        sheetName, row+1, column+1);

    // // Load the Excel file
    // final file = File('example.xlsx');
    // final bytes = await file.readAsBytes();
    // final excel = Excel.decodeBytes(bytes);
    //
    // // Get the sheet and cell to read
    // final sheet = excel[sheetName];
    // final value = sheet.cell(CellIndex.indexByString(cell)).value;

    // Return the cell value as a string
    //return value.toString();
  }


  static DownloadExcel()async{
    //load file

    ByteData data = await rootBundle.load('assets/Excel_file_2.xlsx');
    if (data == null) {
      debugPrint("data download is null");
      return null;
    }
    List<int>? bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    //List<int>? excel= await Excel.decodeBytes(bytes);

  // Get the directory for storing the file
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/example.xlsx';

  // Write the Excel file
  final file = File(filePath);
  await file.writeAsBytes(bytes);
  // Open the file
  await OpenFile.open(filePath);
}
static String convertToCellReference(int columnIndex, int rowIndex) {
  final sb = StringBuffer();
  do {
    final remainder = columnIndex % 26;
    sb.write(String.fromCharCode('A'.codeUnitAt(0) + remainder));
    columnIndex = (columnIndex / 26).floor() - 1;
  } while (columnIndex >= 0);
  sb.write(rowIndex + 1);
  return sb.toString();
  }

//convert "A1" to column 1 , row 1
convertToCellRowandColunm(
    cellindex
    ){
  final cellReference = cellindex;
  final column = cellReference.substring(0, 1).toUpperCase().codeUnitAt(0) - 65;
  final row = int.parse(cellReference.substring(1)) - 1;
  return [column,row];
}


}






