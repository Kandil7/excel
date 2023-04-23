import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class plo extends StatefulWidget {
  plo({super.key});

  @override
  State<plo> createState() => _ploState();
}

class _ploState extends State<plo> {
  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Padding(

      padding: const EdgeInsets.all(16),
      child: DataTable2(
          headingRowHeight: 100,

          minWidth: 10,
          dataRowHeight: 140  ,

          columnSpacing: 12,
          horizontalMargin: 12,
          smRatio: 0.75,
          lmRatio: 1.5,
          columns: const [
            DataColumn2(
              fixedWidth: 60,



              size: ColumnSize.S,
              label: Text('CLO#'),
            ),
            DataColumn2(
              fixedWidth: 550,
              label: Text('CLO Description'),
            ),
            DataColumn2(


              label: Text('Allignment of CLO with Program Learning Outcomes (PLO)'),
            ),

          ],
          rows: List<DataRow>.generate(
              11,
                  (index) => DataRow(cells: [
                DataCell(Text(  ('CLO_${index + 1}').toString())),
                DataCell(
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: ' Write Description',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Knowledge & Understanding',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Column(
                                children:  [
                                  Text('k1'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                  Text('k2'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                  Text('k3'),
                                  Container(
                                    width: 60,
                                    height: 30,
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


                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text('Skill',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Column(
                                children:  [
                                  Text('S1'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('S2'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('S3'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('S4'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('S5'),
                                  Container(
                                    width: 60,
                                    height: 30,
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


                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text('Value',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Column(
                                children:  [
                                  Text('V1'),

                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('V2'),
                                  Container(
                                    width: 60,
                                    height: 30,
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
                                children: [
                                  Text('V3'),
                                  Container(
                                    width: 60,
                                    height: 30,
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


                        ],
                      ),





                    ],
                  ),

                ),

              ]))),
    );
  }
}
