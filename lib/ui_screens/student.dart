import 'package:data_table_2/data_table_2.dart';
import 'package:excel/utils/constant.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../componet/componet.dart';
import '../storage_helper/get_storage_helper.dart';

/// Example without datasource
class DataTable2SimpleDemo extends StatefulWidget {
   DataTable2SimpleDemo({super.key});

  @override
  State<DataTable2SimpleDemo> createState() => _DataTable2SimpleDemoState();
}

class _DataTable2SimpleDemoState extends State<DataTable2SimpleDemo> {


  @override
  void initState() {
    initScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          smRatio: 0.75,
          lmRatio: 1.5,
          columns: const [
            DataColumn2(
              fixedWidth: 60  ,
              size: ColumnSize.S,
              label: Text('S.No'),
            ),
            DataColumn2(
              fixedWidth: 400,
              label: Text('STUDENT ID'),
            ),
            DataColumn2(
              label: Text('STUDENT NAME'),
            ),

          ],
          rows: List<DataRow>.generate(
              total,
              (index) => DataRow(cells: [
                    DataCell(Text(  (index + 1).toString())),
                    DataCell(
                      TextFormField(
                        controller: StudentIdController[index],
                        onChanged: (value)async{
                          if (value != null) {
                            await GetStorageHelper.writeData(
                                'StudentID_$index', value);
                             await ExcelHelper.updateCell(
                                'Students', 'D${(11 + index).toString()}', value);}


                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Student ID',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: StudentNameController[index],
                        onChanged: (value)async{
                          if(value!=null){
                            await GetStorageHelper.writeData('StudentName_$index', value);
                            await ExcelHelper.updateCell(
                              'Students', 'E${(11+index).toString()}', value);
                          }
                        },


                        decoration: InputDecoration(
                          hintText: 'Enter Student Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ]))),
    );
  }
}
