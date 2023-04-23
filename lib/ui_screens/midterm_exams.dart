import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class MidTermExams extends StatelessWidget {
  MidTermExams({super.key});
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
              37,
                  (index) => DataRow(cells: [
                DataCell(Text(  (index + 1).toString())),
                DataCell(
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '  ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '  Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      Column(
                        children:  [
                          Text('Q1'),
                          Container(
                            width: 40,
                            height: 20,
                            child: TextFormField(


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
                DataCell(
                  Row(
                    children: [
                      Column(
                        children:  [
                          Text('Q1'),
                          Container(
                            width: 40,
                            height: 20,
                            child: TextFormField(


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
