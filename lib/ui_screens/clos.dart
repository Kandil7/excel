import 'package:data_table_2/data_table_2.dart';
import 'package:excel/componet/componet.dart';
import 'package:excel/storage_helper/get_storage_helper.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';


import '../componet/widget.dart';
import '../utils/constant.dart';

/// Example without datasource
class clos extends StatefulWidget {
  clos({super.key});

  @override
  State<clos> createState() => _closState();
}

class _closState extends State<clos> {
  @override
  void initState() {
    initCLOS();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          headingRowHeight: 100,
          minWidth: 10,
          dataRowHeight: 140,
          columnSpacing: 12,
          horizontalMargin: 12,
          smRatio: 0.75,
          lmRatio: 1.5,
          columns:  [
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
              label: Text(
                  'Allignment of CLO with Program Learning Outcomes (PLO)'),
            ),
          ],
          rows: List<DataRow>.generate(
              CLO_total,
              (index) => DataRow(cells: [
                    DataCell(Text(('CLO_${index + 1}').toString())),
                    DataCell(
                      TextFormField(
                        controller: DescriptionController[index],
                        onChanged: (value) async {
                          if (value != null) {
                            await
                          GetStorageHelper.writeData(
                              'Description_CLO_$index', value);
                          await ExcelHelper.updateCell(
                          "CLOs", "D${(13+index).toString()}", value);}
                        },
                        
                        decoration: InputDecoration(
                          hintText: ' Write Description',
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
                                Text(
                                  'Knowledge & Understanding',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    customDropMenu(
                                     cell: 'E${(13+index).toString()}',
                                      controller: K1_controller[index],
                                      label: 'K1',
                                      dataValue: 'K1_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'F${(13+index).toString()}',
                                      controller: K2_controller[index],
                                      label: 'K2',
                                      dataValue: 'K2_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'G${(13+index).toString()}',
                                      controller: K3_controller[index],
                                      label: 'K3',
                                      dataValue: 'K3_CLO_$index',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Skill',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    customDropMenu(
                                      cell: 'H${(13+index).toString()}',
                                      controller: S1_controller[index],
                                      label: 'S1',
                                      dataValue: 'S1_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'I${(13+index).toString()}',
                                      controller: S2_controller[index],
                                      label: 'S2',
                                      dataValue: 'S2_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'J${(13+index).toString()}',
                                      controller: S3_controller[index],
                                      label: 'S3',
                                      dataValue: 'S3_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'K${(13+index).toString()}',
                                      controller: S4_controller[index],
                                      label: 'S4',
                                      dataValue: 'S4_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'L${(13+index).toString()}',
                                      controller: S5_controller[index],
                                      label: 'S5',
                                      dataValue: 'S5_CLO_$index',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Value',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    customDropMenu(
                                      cell: 'M${(13+index).toString()}',
                                      controller: V1_controller[index],
                                      label: 'V1',
                                      dataValue: 'V1_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      cell: 'N${(13+index).toString()}',
                                      controller: V2_controller[index],
                                      label: 'V2',
                                      dataValue: 'V2_CLO_$index',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    customDropMenu(
                                      controller: V3_controller[index],
                                      label: 'V3',
                                      dataValue: 'V3_CLO_$index',
                                      cell: 'O${(13+index).toString()}',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]))),
    );
  }
}
