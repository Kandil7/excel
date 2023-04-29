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
import 'package:flutter/services.dart';
import 'package:flutter_excel/flutter_excel.dart';
import 'package:open_file/open_file.dart';

class ExcelHelper {


  static Future<void> saveExcel( String filePath) async {
    ByteData data = await rootBundle.load('assets/Excel_file.xls');
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
    List<int> bytes = excel.encode();
    File file = File(filePath);
    await file.writeAsBytes(bytes);
  }

  static Future<void> updateCell( String sheetName, String cell, String value) async {
    ByteData data = await rootBundle.load('assets/Excel_file.xls');
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
    List<int> bytes = excel.encode();
    File file = File(filePath);
    ExcelWorksheet sheet = excel[sheetName];
    sheet.cell(cell).value = value;
  }
  static readCell(String sheetName, String cell) async {
    ByteData data = await rootBundle.load('assets/Excel_file.xls');
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
    ExcelWorksheet sheet = excel[sheetName];
    return sheet.cell(cell).value;
  }
  Static DownloadExcel() async {
    ByteData data = await rootBundle.load('assets/Excel_file.xls');
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel= await Excel.decodeBytes(bytes);
    List<int> bytes = excel.encode();
    File file = File(filePath);
    await file.writeAsBytes(bytes);
    OpenFile.open(filePath);
  }
}






