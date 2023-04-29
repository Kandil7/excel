import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_excel/excel.dart';
import 'package:gsheets/gsheets.dart';

// class GsheetHelper {
//
//
//
//   final String _credentialsPath= r'''
// {
// "type": "service_account",
// "project_id": "excel-385211",
// "private_key_id": "b36b15427d27f86ac09ca57c785d18f344f3c3f3",
// "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCrXR61JxkOvZTY\nnxpngvDnxAXiFDn22DGpeGCLZinZgW1MPMHsgfHWmqyCfuPU5uTRhd+xFjmkHO70\nS4fMxroE7FmfnEPC47QFKu7HsgrDHKfFsAA82WmkBl6NZW511Mwziel5Br7sg7FR\ndck5DC4iBuGyOXicwrwO5Z4nk7Y0QO9Nb3QBy/dWeZqNgas2n7EiZWMpqZckz8zI\nN7a5fhv6DCB1vmjyG6kg4brxBER6mODJTJoCtyEA2bNFznCwtBob35s1/77v7u3m\nFunAKUHiCopZVeoWQ3Dk8C9GRSBLq9xsCw1QIF/VQ4pKQtQ77F001f3F2eFWR0Es\n+XqFn/T7AgMBAAECggEAP0WkvvJuuBibytgEIdAhLxIbsfwR4ui0fYRq8U2JijvV\npV6Ro8ffCYQWyiAb81JFjm9FxtcT9VqRiDYTMDL4IDU8akiCZIU6xOWzQJymiKAd\n+kof7FfCP8PySXb4MB2gQC9du0gYWq/NWuyInb23kuzDjNDXjdoBIeb6XFaX4fa1\nN1JUTVcnoytTBdF/YbR+HI0Ac1o4flG5Jycixwykpc+22xHTYW8EbRJ4Ex+nPf/M\nOOBq9N9GTrNC+EFD0CbFccNF7fDl12W3pikp1eabNVI1Csm9zCc28+d4QptVm3ga\nV5ZcES8Z0e6J0zFkYcF2sksxDO6OYqdTRxCHL1IQEQKBgQDTf+GUD5a0Fvp2JTZx\neEKt2t7wbziZv0XCxU7DTjhiC4zwzBFRmoomMqCy4dzms2pVGqut7B8/NpuT+mj6\nnxHjHVL0Hy4XGVELrSga7WdBJylm0JTZX/2wM1mNHnztb1+0W9U39PEebcuUoGd6\nyFIvJT6QiSigS8JKiVNBzYEK7wKBgQDPa2HeV2/3ytv8IVJivJDwObfHonuHTcaP\nDGg+Jl1HeqCm/W+/RBOz7vbF8Tz3Ls52F9LAvc8CX/IPWI36wwBgKeVqwKw/zCtB\nasDPC3Vq4mOZlvGDPtzgzQbhBG4UyRE1zHPVEJZqQDccTWFPY5Yygb6I+ZS31bXM\ncc0hQXhmtQKBgQC3IfUGilT4zSjEIka5C+PYvDrsP7Hn1uol00j27gT+SHgajOi2\nGzViC9Z/7fijvljlJfnf2CPaTYN7J4m88P3BBUQt48257I7zqFSgtE4C6VD9GMC6\nVFbLOjthaTPNN/HLrvS5xhr+OR3dLONNOqWG8x3wcwM9gTvT5IK16KbC+wKBgQDD\niQGsL1WYjZ6wo2EdP5KLRH4iLuSw+vsSY6np3RTWi53jjsvHzY+dcsskc3T7uR5d\nabv+g3EhVf3Fxb+jBC3YeeaSqqw3QGwOsWquRKkeZ+lpI0juZ1amfeHcQubbpWka\nBHG2DHsgEwVhIvl3c/RmDLXoPxCZ9Vf7MdUlYqj0eQKBgAG9brmaFugCLm50S9U7\nd//VL2G0POBA0hwqB+9R0xEVEQDpLaVNpy19XExC3sr/+f3K2JC32sKbeM7fnyP1\nj5YXo3+jPBq34BHwZVm35yyJj8x+pGS+yBhxw8xP5FspKWknJI5vcT03Dr0LDuDC\njLRcFnUrgE1KTiKsCt6FoC66\n-----END PRIVATE KEY-----\n",
// "client_email": "flutter-excel@excel-385211.iam.gserviceaccount.com",
// "client_id": "100145085870738010021",
// "auth_uri": "https://accounts.google.com/o/oauth2/auth",
// "token_uri": "https://oauth2.googleapis.com/token",
// "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
// "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-excel%40excel-385211.iam.gserviceaccount.com"
// }''';
//
//   final String _sheetId = '1EekARs23mUfLeMNBqP1sS3DkjmCDEi_DfcTxWglu38k';
//
//
// var SheetNames=[
//   'Student',
//   'CLOs',
//   'Assignments',
//   'Quizzes',
//   'MidTermExams',
//   'FinalExam',
//   'CLO Achievement Report',
//   'PLO Achievement Report',
// ];
//
//   updateExcelFileFormAssetExcelFile(sheet) async {
//
//
//     await sheet.init();
//
//     final worksheet = sheet.worksheets[0];
//     final rows = await worksheet.values.allRows();
//     final row = rows[0];
//     row[0] = 'New Value';
//     await worksheet.values.insertRow(0, row);
//   }
//
//   // updatefile(ss)async{
//
//   //   // final sheet = await ss.worksheetByTitle('Sheet1');
//   //   for (var i = 0; i < SheetNames.length; i++) {
//   //     final sheet = await ss.worksheetByTitle(SheetNames[i]);
//   //     final worksheet = sheet.worksheet];
//   //     final rows = await worksheet.values.allRows();
//
//   //   }
//     // List sheets= await ss.sheets;
//     // for (var i = 0; i < sheets.length; i++) {
//     //   ByteData data = await rootBundle.load('assets/Excel_file_2.xlsx');
//     //   List<int>? bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//     //   var assetFile= await Excel.decodeBytes(bytes);
//     //   final sheet = await ss.worksheetByTitle(sheets[i]);
//     //   final worksheet = sheet.worksheets[0];
//     //   final rows = await worksheet.values.allRows();
//     //   var sheetAssetFile= await assetFile.sheets;
//     //   var sheetAsset= await sheetAssetFile[i];
//     //   var rowsAsset= await sheetAsset?.rows;
//     //   final row = rowsAsset!;
//     //   await worksheet.values.insertRow(
//     //       rows.length, row
//     //   );
//
//     // }
//   }


import 'package:gsheets/gsheets.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class GSheetHelper {
    final String credentialsPath= r'''
{
"type": "service_account",
"project_id": "excel-385211",
"private_key_id": "b36b15427d27f86ac09ca57c785d18f344f3c3f3",
"private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCrXR61JxkOvZTY\nnxpngvDnxAXiFDn22DGpeGCLZinZgW1MPMHsgfHWmqyCfuPU5uTRhd+xFjmkHO70\nS4fMxroE7FmfnEPC47QFKu7HsgrDHKfFsAA82WmkBl6NZW511Mwziel5Br7sg7FR\ndck5DC4iBuGyOXicwrwO5Z4nk7Y0QO9Nb3QBy/dWeZqNgas2n7EiZWMpqZckz8zI\nN7a5fhv6DCB1vmjyG6kg4brxBER6mODJTJoCtyEA2bNFznCwtBob35s1/77v7u3m\nFunAKUHiCopZVeoWQ3Dk8C9GRSBLq9xsCw1QIF/VQ4pKQtQ77F001f3F2eFWR0Es\n+XqFn/T7AgMBAAECggEAP0WkvvJuuBibytgEIdAhLxIbsfwR4ui0fYRq8U2JijvV\npV6Ro8ffCYQWyiAb81JFjm9FxtcT9VqRiDYTMDL4IDU8akiCZIU6xOWzQJymiKAd\n+kof7FfCP8PySXb4MB2gQC9du0gYWq/NWuyInb23kuzDjNDXjdoBIeb6XFaX4fa1\nN1JUTVcnoytTBdF/YbR+HI0Ac1o4flG5Jycixwykpc+22xHTYW8EbRJ4Ex+nPf/M\nOOBq9N9GTrNC+EFD0CbFccNF7fDl12W3pikp1eabNVI1Csm9zCc28+d4QptVm3ga\nV5ZcES8Z0e6J0zFkYcF2sksxDO6OYqdTRxCHL1IQEQKBgQDTf+GUD5a0Fvp2JTZx\neEKt2t7wbziZv0XCxU7DTjhiC4zwzBFRmoomMqCy4dzms2pVGqut7B8/NpuT+mj6\nnxHjHVL0Hy4XGVELrSga7WdBJylm0JTZX/2wM1mNHnztb1+0W9U39PEebcuUoGd6\nyFIvJT6QiSigS8JKiVNBzYEK7wKBgQDPa2HeV2/3ytv8IVJivJDwObfHonuHTcaP\nDGg+Jl1HeqCm/W+/RBOz7vbF8Tz3Ls52F9LAvc8CX/IPWI36wwBgKeVqwKw/zCtB\nasDPC3Vq4mOZlvGDPtzgzQbhBG4UyRE1zHPVEJZqQDccTWFPY5Yygb6I+ZS31bXM\ncc0hQXhmtQKBgQC3IfUGilT4zSjEIka5C+PYvDrsP7Hn1uol00j27gT+SHgajOi2\nGzViC9Z/7fijvljlJfnf2CPaTYN7J4m88P3BBUQt48257I7zqFSgtE4C6VD9GMC6\nVFbLOjthaTPNN/HLrvS5xhr+OR3dLONNOqWG8x3wcwM9gTvT5IK16KbC+wKBgQDD\niQGsL1WYjZ6wo2EdP5KLRH4iLuSw+vsSY6np3RTWi53jjsvHzY+dcsskc3T7uR5d\nabv+g3EhVf3Fxb+jBC3YeeaSqqw3QGwOsWquRKkeZ+lpI0juZ1amfeHcQubbpWka\nBHG2DHsgEwVhIvl3c/RmDLXoPxCZ9Vf7MdUlYqj0eQKBgAG9brmaFugCLm50S9U7\nd//VL2G0POBA0hwqB+9R0xEVEQDpLaVNpy19XExC3sr/+f3K2JC32sKbeM7fnyP1\nj5YXo3+jPBq34BHwZVm35yyJj8x+pGS+yBhxw8xP5FspKWknJI5vcT03Dr0LDuDC\njLRcFnUrgE1KTiKsCt6FoC66\n-----END PRIVATE KEY-----\n",
"client_email": "flutter-excel@excel-385211.iam.gserviceaccount.com",
"client_id": "100145085870738010021",
"auth_uri": "https://accounts.google.com/o/oauth2/auth",
"token_uri": "https://oauth2.googleapis.com/token",
"auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
"client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-excel%40excel-385211.iam.gserviceaccount.com"
}''';

  final String sheetId = '1EekARs23mUfLeMNBqP1sS3DkjmCDEi_DfcTxWglu38k';


var SheetNames=[
  'Student',
  'CLOs',
  'Assignments',
  'Quizzes',
  'MidTermExams',
  'FinalExam',
  'CLO Achievement Report',
  'PLO Achievement Report',
];




  Future<Worksheet?> getWorksheetByTitle(String title) async {
    final gsheets = GSheets(credentialsPath);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(sheetId);
    return ss.worksheetByTitle(title);
  }

  Future<Cell> getCell(String sheetTitle, int row, int column) async {
    final worksheet = await getWorksheetByTitle(sheetTitle);
    return worksheet!.cells.cell(row: row, column: column);
  }

  Future<String> getCellValue(String sheetTitle, int row, int column) async {
    final cell = await getCell(sheetTitle, row, column);
    return cell.value;
  }

   Future<void> updateCellValue(String sheetTitle, int row, int column, String newValue) async {
    final cell = await getCell(sheetTitle, row, column);
    await cell.post(newValue);
  }

  Future<List<List<String>>> getRows(String sheetTitle) async {
    final worksheet = await getWorksheetByTitle(sheetTitle);
    final rows = await worksheet?.values.allRows();
    return rows!;
  }

  Future<void> addRow(String sheetTitle, List<String> rowValues) async {
    final worksheet = await getWorksheetByTitle(sheetTitle);
    await worksheet?.values.appendRow(rowValues);
  }

  Future<void> updateRow(String sheetTitle, int row, List<String> rowValues) async {
    final worksheet = await getWorksheetByTitle(sheetTitle);
    await worksheet?.values.insertRow(row, rowValues);
  }

  downloadFile() async {
    final gsheets = GSheets(credentialsPath);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(sheetId);
    // ByteData data = await rootBundle.load('assets/Excel_file_2.xlsx');
    // List<int>? bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    //
    //
    //
    // for (var i = 0; i < SheetNames.length; i++) {
    //
    //
    //
    //   // Get the directory for storing the file
    //   final directory = await getApplicationDocumentsDirectory();
    //   final filePath = '${directory.path}/my_file.xlsx';
    //
    //   // Write the Excel file
    //   final file = File(filePath);
    //   //await file.writeAsBytes(bytes);
    //   ss.export(file,ExportFormat.xlsx );
    //   // Open the file
    //   await OpenFile.open(filePath);
    //
    //
    // }


    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/my_file.xlsx';

    // Write the Excel file
    final file = File(filePath);
    //await file.writeAsBytes(bytes);
    ss.export(file,ExportFormat.xlsx );
    // Open the file
    await OpenFile.open(filePath);



  }

}



