import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class Quiz extends StatelessWidget {
  Quiz({super.key});
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
                      SizedBox(width: 8,),
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
                      SizedBox(width: 8,),
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
                      SizedBox(width: 8,),
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
                      SizedBox(width: 8,),
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



                    ],
                  ),

                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 20,
                    child: TextFormField(
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
