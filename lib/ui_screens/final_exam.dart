import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/componet.dart';
import 'package:excel/componet/finalExam_component.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';


import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

/// Example without datasource
class FinalExam extends StatefulWidget {

  @override
  State<FinalExam> createState() => _FinalExamState();
}

class _FinalExamState extends State<FinalExam> {
  @override
  void initState() {
    initScreen();
    initFinalController();
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
              fixedWidth: 200,
              label: Text('STUDENT ID'),
            ),
            DataColumn2(
              fixedWidth: 200,
              label: Text('STUDENT NAME'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Final Examination'),
            ),
            DataColumn2(
              fixedWidth: 200,
              label: Text('Total Marks Obtained',style: TextStyle(
                fontSize: 15,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children:  [
                            Text('Q1'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q1_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q1_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam', 'F${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q2'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q2_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q2_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','G${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q3'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q3_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q3_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','H${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q4'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q4_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q4_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','I${(31+index).toString()}', value);}

                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q5'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q5_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q5_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','J${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q6'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q6_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q6_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','K${(31+index).toString()}', value);}

                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q7'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q7_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q7_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','L${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q8'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q8_controller[index],
                                  onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalExam_Q8_$index', value);
                                  await ExcelHelper.updateCell('FinalExam','M${(31+index).toString()}', value);}
                                  },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q9'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q9_controller[index],
                                onChanged: (value) async {
                                  if (value != null) {
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q9_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','N${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q10'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q10_controller[index],
                                onChanged: (value) async {
                                  if (value != null) {
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q10_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','O${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q11'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q11_controller[index],
                                onChanged: (value) async {
                                  if (value != null) {
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q11_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','P${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q12'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q12_controller[index],
                                onChanged: (value) async {
                                  if (value != null) {
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q12_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','Q${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q13'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q13_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q13_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','R${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q14'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q14_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
                                  GetStorageHelper.writeData(
                                      'FinalExam_Q14_$index', value);
                                  await ExcelHelper.updateCell(
                                      'FinalExam','S${(31+index).toString()}', value);}
                                },


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q15'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller:FinalExam_Q15_controller[index],
                                onChanged: (value) async {
                                  if(value !=null){
await GetStorageHelper.writeData(
'FinalExam_Q15_$index', value);
 await ExcelHelper.updateCell(
'FinalExam','T${(31+index).toString()}', value);
}},


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),



                      ],
                    ),
                  ),

                ),
                    DataCell(
                      TextFormField(
                        controller:FinalExam_Total_Marks_controller[index],

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),





                  ]))),
    );
  }
}
