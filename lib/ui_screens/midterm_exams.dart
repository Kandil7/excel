import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/componet.dart';
import 'package:excel/storage_helper/get_storage_helper.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';


import '../componet/midTerm_component.dart';
import '../componet/widget.dart';
import '../utils/constant.dart';

/// Example without datasource
class MidTermExams extends StatefulWidget {
  MidTermExams({super.key});

  @override
  State<MidTermExams> createState() => _MidTermExamsState();
}

class _MidTermExamsState extends State<MidTermExams> {
  @override
  void initState() {
initScreen();
intiMedtermController();
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
              fixedWidth: 25  ,
              size: ColumnSize.S,
              label: Text('S.No'),
            ),
            DataColumn2(
              fixedWidth: 150,
              label: Text('STUDENT ID'),
            ),
            DataColumn2(
              fixedWidth: 150,
              label: Text('STUDENT NAME'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Mid Lab Exam-I'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Final Lab Exam-II'),
            ),
            DataColumn2(
              size: ColumnSize.S,

              fixedWidth: 50,
              label: Text('Total Marks Obtained',style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 50,
              label: Text('Mid Term Exam-I',style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 50,
              label: Text('Final Term Exam-II',style: TextStyle(
                fontSize: 7,
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
                      hintText: '  ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller: StudentNameController[index],
                    decoration: InputDecoration(
                      hintText: '  Name',
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
                                controller: MidtermExam1_Q1_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q1_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','F${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q2_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q2_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','G${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q3_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q3_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','H${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q4_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q4_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','I${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q5_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q5_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','J${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q6_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q6_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','K${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q7_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q7_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','L${(31+index).toString()}',value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )
                            )
                ]
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children:  [
                            Text('Q8'),
                            Container(
                              width: 40,
                              height: 20,
                              child: TextFormField(
                                controller: MidtermExam1_Q8_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q8_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','M${(31+index).toString()}',value);
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
                                controller: MidtermExam1_Q9_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q9_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','N${(31+index).toString()}',value);
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
controller: MidtermExam1_Q10_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam1_Q10_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','O${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q1_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q1_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','P${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q2_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q2_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','Q${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q3_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q3_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','R${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q4_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q4_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','S${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q5_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q5_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','T${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q6_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q6_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','U${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q7_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q7_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','V${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q8_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q8_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','W${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q9_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q9_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','X${(31+index).toString()}',value);
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
                                controller: MidtermExam2_Q10_controller[index],
                                onChanged: (value){
                                  GetStorageHelper.writeData('MidtermExam2_Q10_$index', value);
                                  ExcelHelper.updateCell('MidtermExam','Y${(31+index).toString()}',value);
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
                   controller: TextEditingController(text:ExcelHelper.readCell('MidtermExam','Z${(31+index).toString()}')),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller:TextEditingController(text:ExcelHelper.readCell('MidtermExam','AA${(31+index).toString()}')),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller:TextEditingController(text:ExcelHelper.readCell('MidtermExam','AB${(31+index).toString()}')),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),



              ]))),
    );
  }
}
