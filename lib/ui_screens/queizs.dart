import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/componet.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../componet/Quize_componet.dart';
import '../componet/widget.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

/// Example without datasource
class Quiz extends StatefulWidget {
   Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {


  @override
  void initState() {
   //initQuizzes();
    initQizeController();
    //calculateTotalQuizes();
   initScreen();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 0.5,
          horizontalMargin: 10,
          minWidth: 600,
          smRatio: 0.75,
          lmRatio: 1.5,
          columns: const [
            DataColumn2(
              fixedWidth: 22  ,
              size: ColumnSize.S,
              label: Center(
                child: Text('S.No',style:
                TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                )
                  ,),
              ),
            ),
            DataColumn2(
              fixedWidth: 135,
              label: Text('    STUDENT ID'),
            ),
            DataColumn2(
              fixedWidth: 135,
              label: Text('STUDENT NAME'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-1'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-2'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-3'),
            ),
            DataColumn2(

              size: ColumnSize.S,


              label: Text('Quiz-4'),
            ),
            DataColumn2(
              fixedWidth: 38,

              size: ColumnSize.S,
              label: Text('Total Marks Obtained',style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('1',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('2',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('3',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('4',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),




          ],
          rows:
          List<DataRow>.generate(

              37,
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
                                controller: Quiz1_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz1_Q1_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','F${(31+index).toString()}', value);}
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
                                controller: Quiz1_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz1_Q2_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','G${(31+index).toString()}', value);}
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
                                controller: Quiz1_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quize1_Q3_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','H${(31+index).toString()}', value);}
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
                                controller: Quiz1_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz1_Q4_$index', value);

                                  setState(() {
                                    Quiz1_total_controller![index].text = GetStorageHelper.readData('Quiz1_total_$index');
                                  });
                                  await ExcelHelper.updateCell('Quizzes','I${(31+index).toString()}', value);}
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
                                controller: Quiz1_Q5_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz1_Q5_$index', value);


                                  await ExcelHelper.updateCell('Quizzes','J${(31+index).toString()}', value);}
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



                      ],
                    ),
    )

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
                                controller: Quiz2_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz2_Q1_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','K${(31+index).toString()}', value);}
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
                                controller: Quiz2_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz2_Q2_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','L${(31+index).toString()}', value);}
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


                                controller: Quiz2_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz2_Q3_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','M${(31+index).toString()}', value);}
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
                                controller: Quiz2_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz2_Q4_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','N${(31+index).toString()}', value);}
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
                                controller: Quiz2_Q5_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz2_Q5_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','O${(31+index).toString()}', value);}
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
                                controller: Quiz3_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz3_Q1_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','P${(31+index).toString()}', value);}
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
                                controller: Quiz3_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz3_Q2_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','Q${(31+index).toString()}', value);}
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
                                controller: Quiz3_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz3_Q3_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','R${(31+index).toString()}', value);}
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
                                controller: Quiz3_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz3_Q4_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','S${(31+index).toString()}', value);}
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
                                controller:Quiz3_Q5_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz3_Q5_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','T${(31+index).toString()}', value);}
                                  
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
                                controller: Quiz4_Q1_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz4_Q1_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','U${(31+index).toString()}', value);}
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
                                controller: Quiz4_Q2_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz4_Q2_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','V${(31+index).toString()}', value);}
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
                                controller: Quiz4_Q3_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz4_Q3_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','W${(31+index).toString()}', value);}
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
                                controller: Quiz4_Q4_controller[index],
                                onChanged: (value)async{if(value !=null){
                                  GetStorageHelper.writeData('Quiz4_Q4_$index', value);

                                  await ExcelHelper.updateCell('Quizzes','X${(31+index).toString()}', value);}
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
                                controller: Quiz4_Q5_controller[index],
                                onChanged: (value)async{
                                 if(value !=null){
                                    await GetStorageHelper.writeData('Quiz4_Q5_$index', value);

                                  
                                   await ExcelHelper.updateCell('Quizzes','Y${(31+index).toString()}', value);}
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



                      ],
                    ),
                  ),

                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
                      controller: Quizes_total_marks_controller![index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
                      controller:Quiz1_total_controller[index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
                      controller:Quiz2_total_controller[index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
                      controller:Quiz3_total_controller[index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
                      controller:Quiz4_total_controller[index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),



              ]))),
    );
  }
}
