import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/componet.dart';
import 'package:flutter/material.dart';
import '../componet/Clos_achievment_report.dart';
import '../utils/constant.dart';
import '../Excel helper/Excel_service.dart';

/// Example without datasource
class CloReport extends StatefulWidget {
  CloReport({super.key});

  @override
  State<CloReport> createState() => _CloReportState();
}

class _CloReportState extends State<CloReport> {
  @override
  void initState() {
    initScreen();
    initCLOControllers();
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
          //minWidth: 600,
           smRatio: 0.75,
           lmRatio: 1.5,
          columns: const [
            DataColumn2(
              fixedWidth: 40  ,
              size: ColumnSize.S,
              label: Text('S.No'),
            ),
            DataColumn2(
              //fixedWidth: 200,
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
              total,
                  (index) => DataRow(cells: [
                DataCell(Text(  (index + 1).toString())),
                DataCell(
                  TextFormField(
                    controller: StudentIdController[index],
                    decoration: InputDecoration(
                      hintText: 'Enter Student ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller: StudentNameController[index],
                    decoration: InputDecoration(
                      hintText: 'Enter Student Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller: CLO1_Achievment_Report_controller[index],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                    DataCell(
                      TextFormField(
                       controller: CLO2_Achievment_Report_controller[index],


                    decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO3_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    DataCell(
                      TextFormField(
                        controller: CLO4_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO5_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO6_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO7_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO8_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller:   CLO9_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO10_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller: CLO_Total_Achievment_Report_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                  ]))),
    );
  }
}
