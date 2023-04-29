import 'package:gsheet/gsheet.dart';

class GsheetHelper {



  final String _credentialsPath= r'''
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

  final String _sheetId = '1EekARs23mUfLeMNBqP1sS3DkjmCDEi_DfcTxWglu38k';



  Future<void> printData() async {
    final credentials = await GSheetCredentials.fromFile(_credentialsPath);
    final sheet = GSheet(_sheetId, credentials);
    await sheet.init();

    final worksheet = sheet.worksheets[0];
    final rows = await worksheet.values.allRows();


    for (final row in rows) {
      print(row.join('\t'));
    }
  }
  updateExcelFileFormAssetExcelFile() async {
    final credentials = await GSheetCredentials.fromFile(_credentialsPath);
    final sheet = GSheet(_sheetId, credentials);
    await sheet.init();

    final worksheet = sheet.worksheets[0];
    final rows = await worksheet.values.allRows();
    final row = rows[0];
    row[0] = 'New Value';
    await worksheet.values.insertRow(0, row);
  }

  updatefile()async{
    List sheets= await ss.sheetsTitles;
    for (var i = 0; i < sheets.length; i++) {
      final assetFile = await gsheets.loadFromAsset('assets/Excel_file.xls');
      final sheet = await ss.worksheetByTitle(sheets[i]);
      await sheet.updateValues(
        assetFile.sheets[sheet[i]].cells,
        assetFile.sheets[sheet[i]].values,
      );
    }
  }
}
