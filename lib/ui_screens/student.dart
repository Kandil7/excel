import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class DataTable2SimpleDemo extends StatelessWidget {
   DataTable2SimpleDemo({super.key});
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
              37,
              (index) => DataRow(cells: [
                    DataCell(Text(  (index + 1).toString())),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Student ID',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
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
