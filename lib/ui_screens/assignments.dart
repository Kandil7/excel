import 'package:data_table_2/data_table_2.dart';
import 'package:excel/storage_helper/get_storage_helper.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';


import '../componet/assgnment_componet.dart';
import '../componet/componet.dart';
import '../utils/constant.dart';

/// Example without datasource
class Assignments extends StatefulWidget {
  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  void initState() {
    initScreen();
    initAssignsControllers();
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
              fixedWidth: 22,
              size: ColumnSize.S,
              label: Center(
                child: Text(
                  'S.No',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
              label: Text('Assignment-1'),
            ),
            DataColumn2(
              size: ColumnSize.S,
              label: Text('Assignment-2'),
            ),
            DataColumn2(
              size: ColumnSize.S,
              label: Text('Assignment-3'),
            ),
            DataColumn2(
              size: ColumnSize.S,
              label: Text('Assignment-4'),
            ),
            DataColumn2(
              fixedWidth: 38,
              size: ColumnSize.S,
              label: Text(
                'Total Marks Obtained',
                style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
          rows: List<DataRow>.generate(
              total,
              (index) => DataRow(cells: [
                    DataCell(Text((index + 1).toString())),
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
                              children: [
                                Text('Q1'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign1_Q1_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign1_Q1_$index', value);
                                      ExcelHelper.updateCell('Assignment','F${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: [
                                Text('Q2'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign1_Q2_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign1_Q2_$index', value);
                                      ExcelHelper.updateCell('Assignment','G${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: [
                                Text('Q3'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign1_Q3_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign1_Q3_$index', value);
                                      ExcelHelper.updateCell('Assignment','H${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: [
                                Text('Q4'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign1_Q4_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign1_Q4_$index', value);
                                      ExcelHelper.updateCell('Assignment','I${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: [
                                Text('Q5'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign1_Q5_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign1_Q5_$index', value);
                                      ExcelHelper.updateCell('Assignment','J${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
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
                              children: [
                                Text('Q1'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign2_Q1_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign2_Q1_$index', value);
                                      ExcelHelper.updateCell('Assignment','K${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q2'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign2_Q2_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign2_Q2_$index', value);
                                      ExcelHelper.updateCell('Assignment','L${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q3'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign2_Q3_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign2_Q3_$index', value);
                                      ExcelHelper.updateCell('Assignment','M${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q4'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign2_Q4_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign2_Q4_$index', value);
                                      ExcelHelper.updateCell('Assignment','N${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q5'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign2_Q5_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign2_Q5_$index', value);
                                      ExcelHelper.updateCell('Assignment','O${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
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
                              children: [
                                Text('Q1'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign3_Q1_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign3_Q1_$index', value);
                                      ExcelHelper.updateCell('Assignment','P${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q2'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign3_Q2_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign3_Q2_$index', value);
                                      ExcelHelper.updateCell('Assignment','Q${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q3'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign3_Q3_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign3_Q3_$index', value);
                                      ExcelHelper.updateCell('Assignment','R${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q4'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign3_Q4_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign3_Q4_$index', value);
                                      ExcelHelper.updateCell('Assignment','S${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q5'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign3_Q5_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign3_Q5_$index', value);
                                      ExcelHelper.updateCell('Assignment','T${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
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
                              children: [
                                Text('Q1'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign4_Q1_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign4_Q1_$index', value);
                                      ExcelHelper.updateCell('Assignment','U${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q2'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign4_Q2_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign4_Q2_$index', value);
                                      ExcelHelper.updateCell('Assignment','V${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q3'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign4_Q3_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign4_Q3_$index', value);
                                      ExcelHelper.updateCell('Assignment','W${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q4'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign4_Q4_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign4_Q4_$index', value);
                                      ExcelHelper.updateCell('Assignment','X${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Q5'),
                                Container(
                                  width: 40,
                                  height: 20,
                                  child: TextFormField(
                                    controller: Assign4_Q5_controller[index],
                                    onChanged: (value) {
                                      GetStorageHelper.writeData(
                                          'Assign4_Q5_$index', value);
                                      ExcelHelper.updateCell('Assignment','Y${(31+index).toString()}',value);
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
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    DataCell(
                      Container(
                        width: 40,
                        height: 20,
                        child: TextFormField(
                          controller:TextEditingController(text: ExcelHelper.readCell('Assignment','Z${(31+index).toString()}')

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
    controller:TextEditingController(text:ExcelHelper.readCell('Assignment','AA${(31+index).toString()}')),
                          //controller: Assign1_total_controller[index],
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
                          controller:TextEditingController(text:ExcelHelper.readCell('Assignment','AB${(31+index).toString()}')),
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
                          controller:TextEditingController(text:ExcelHelper.readCell('Assignment','AC${(31+index).toString()}')),
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
                          controller: TextEditingController(text:ExcelHelper.readCell('Assignment','AD${(31+index).toString()}'))
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
