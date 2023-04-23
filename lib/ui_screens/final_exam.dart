import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class FinalExam extends StatelessWidget {
  FinalExam({super.key});
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
                      SizedBox(width: 10,),
                      Column(
                        children:  [
                          Text('Q11'),
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
                          Text('Q12'),
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
                          Text('Q13'),
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
                          Text('Q14'),
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
                          Text('Q15'),
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





                  ]))),
    );
  }
}
