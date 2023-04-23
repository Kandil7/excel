import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without datasource
class clos extends StatefulWidget {
  clos({super.key});

  @override
  State<clos> createState() => _closState();
}

class _closState extends State<clos> {
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
            fixedWidth: 200,
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
                                  children: const [
                                    Text('k1'),
                                    // DropdownButton<String>(
                                    //   items: <String>['Yes', 'No'].map((String value) {
                                    //     return DropdownMenuItem<String>(
                                    //       value: value,
                                    //       child: Text(value),
                                    //     );
                                    //   }).toList(),
                                    //   onChanged: (_) {
                                    //     setState(() {
                                    //
                                    //     });
                                    //   },),
                                    DropdownMenu(

                                      width: 95,
                                        dropdownMenuEntries: [
                                          DropdownMenuEntry(


                                            value: 'Yes', label: 'Yes',
                                          ),
                                          DropdownMenuEntry(
                                            value: 'No', label: ' No',
                                          ),
                                        ],

                                    )




                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('k2'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )


                                  ],
                                ),

                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('k3'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

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
                                  children: const [
                                    Text('S1'),
                                    // DropdownButton<String>(
                                    //   items: <String>['Yes', 'No'].map((String value) {
                                    //     return DropdownMenuItem<String>(
                                    //       value: value,
                                    //       child: Text(value),
                                    //     );
                                    //   }).toList(),
                                    //   onChanged: (_) {
                                    //     setState(() {
                                    //
                                    //     });
                                    //   },),
                                    DropdownMenu(

                                      width: 95,
                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(


                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )




                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('S2'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )


                                  ],
                                ),

                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('S3'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )

                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('S4'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )

                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('S5'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

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
                                  children: const [
                                    Text('V1'),
                                    // DropdownButton<String>(
                                    //   items: <String>['Yes', 'No'].map((String value) {
                                    //     return DropdownMenuItem<String>(
                                    //       value: value,
                                    //       child: Text(value),
                                    //     );
                                    //   }).toList(),
                                    //   onChanged: (_) {
                                    //     setState(() {
                                    //
                                    //     });
                                    //   },),
                                    DropdownMenu(

                                      width: 95,
                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(


                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )




                                  ],
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('V2'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

                                    )


                                  ],
                                ),

                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text('V3'),
                                    DropdownMenu(
                                      width: 95,

                                      dropdownMenuEntries: [
                                        DropdownMenuEntry(
                                          value: 'Yes', label: 'Yes',
                                        ),
                                        DropdownMenuEntry(
                                          value: 'No', label: ' No',
                                        ),
                                      ],

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
