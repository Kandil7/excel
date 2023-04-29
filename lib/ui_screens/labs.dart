import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/lab_componet.dart';
import 'package:excel/storage_helper/get_storage_helper.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../componet/componet.dart';
import '../componet/widget.dart';
import '../utils/constant.dart';

/// Example without datasource
class labs extends StatefulWidget {

  @override
  State<labs> createState() => _labsState();
}

class _labsState extends State<labs> {
  @override
  void initState() {
    initScreen();
    initlabController();
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


              label: Text('Mid Lab Exam'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Final Lab Exam'),
            ),
            DataColumn2(
              fixedWidth: 100,
              label: Text('Total Marks Obtained',style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 100,
              label: Text('Mid Lab Exam',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 100,
              label: Text('Final Lab Exam',style: TextStyle(
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
                                controller: MidLabExam_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q1_$index', value);
                                  await ExcelHelper.updateCell('Labs','F${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q2_$index', value);
                                  await ExcelHelper.updateCell('Labs','G${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q3_$index', value);
                                  await ExcelHelper.updateCell('Labs','H${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q4_$index', value);
                                  await ExcelHelper.updateCell('Labs','I${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q5_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q5_$index', value);
                                  await ExcelHelper.updateCell('Labs','J${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q6_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q6_$index', value);
                                  await ExcelHelper.updateCell('Labs','K${(31+index).toString()}', value);}
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
                                controller: MidLabExam_Q7_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('MidLabExam_Q7_$index', value);
                                  await ExcelHelper.updateCell('Labs','L${(31+index).toString()}', value);}
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


                      ],
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
                                controller: FinalLabExam_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q1_$index', value);
                                  await ExcelHelper.updateCell('Labs','M${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q2_$index', value);
                                  await ExcelHelper.updateCell('Labs','N${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q3_$index', value);
                                  await ExcelHelper.updateCell('Labs','O${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q4_$index', value);
                                  await ExcelHelper.updateCell('Labs','P${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q5_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q5_$index', value);
                                  await ExcelHelper.updateCell('Labs','Q${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q6_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q6_$index', value);
                                  await ExcelHelper.updateCell('Labs','R${(31+index).toString()}', value);}
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
                                controller: FinalLabExam_Q7_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('FinalLabExam_Q7_$index', value);
                                  await ExcelHelper.updateCell('Labs','S${(31+index).toString()}', value);}
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


                      ],
                    ),
                  ),

                ),
                    DataCell(
                      TextFormField(
                        controller:LabExam_Total_Marks_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller:MidLabExam_Total_Marks_controller[index],

                     decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    DataCell(
                      TextFormField(
                        controller:FinalLabExam_Total_Marks_controller[index],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),



                  ]))),
    );
  }
}
