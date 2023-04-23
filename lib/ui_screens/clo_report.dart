import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class CloReport extends StatelessWidget {
  CloReport({super.key});
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
              fixedWidth: 200,
              label: Text('STUDENT ID'),
            ),
            DataColumn2(
              fixedWidth: 200,
              label: Text('STUDENT NAME'),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_1',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_2',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_3',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_4',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_5',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_6',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_7',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_8',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_9',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 60,
              label: Text('CLO_10',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 200,
              label: Text('MARKS OBTAINED',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
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
                DataCell(
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                  ]))),
    );
  }
}
