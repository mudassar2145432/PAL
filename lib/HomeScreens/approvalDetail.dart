// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ApprovalDetails extends StatelessWidget {
//   final String appBarTitle;

//   const ApprovalDetails({Key? key, required this.appBarTitle})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double defaultFontSize = 7.0;
//     double fontSize =
//         screenWidth < 500 ? defaultFontSize : defaultFontSize * 1.8;

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 241, 240, 240),
//       appBar: AppBar(
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10.0),
//             child: Image.asset('assets/logo.png', width: 46, height: 46),
//           ),
//         ],
//         backgroundColor: Colors.white,
//         title: Text(
//           appBarTitle,
//           style: TextStyle(
//             fontSize: 17,
//             fontWeight: FontWeight.w800,
//             color: const Color.fromARGB(221, 37, 37, 37),
//           ),
//         ),
//         centerTitle: true,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.navigate_before,
//             color: Colors.blue.shade900,
//             size: 35,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Table(
//                   columnWidths: {
//                     0: FlexColumnWidth(
//                         3.5), // Adjust the width of the first column
//                     1: FlexColumnWidth(
//                         4.5), // Adjust the width of the second column
//                     2: FlexColumnWidth(
//                         3.5), // Adjust the width of the third column
//                     3: FlexColumnWidth(
//                         4.5), // Adjust the width of the fourth column
//                   },
//                   children: [
//                     TableRow(
//                       children: [
//                         TableCell(
//                           child: Text(
//                             'Purchase Order:',
//                             style: TextStyle(
//                                 fontSize: 9, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             'TUV SUB middle East',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             'Order Date:',
//                             style: TextStyle(
//                                 fontSize: 9, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             '20/12/24',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                       ],
//                     ),
//                     TableRow(
//                       children: [
//                         TableCell(
//                           child: Text(
//                             'Purchase Org:',
//                             style: TextStyle(
//                                 fontSize: 9, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             '10-supply chain',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             'Purchase Group:',
//                             style: TextStyle(
//                                 fontSize: 9, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             '003-supply chain',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                       ],
//                     ),
//                     TableRow(
//                       children: [
//                         TableCell(
//                           child: Text(
//                             'Currency:',
//                             style: TextStyle(
//                                 fontSize: 9, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             'PKR',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             '',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                         TableCell(
//                           child: Text(
//                             '',
//                             style: TextStyle(fontSize: 9),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),

//                 ///////////////////////////////////////////////////////////////////////table
//                 Container(
//                   margin: EdgeInsets.only(top: 20),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: Table(
//                       columnWidths: {
//                         0: FlexColumnWidth(0.1),
//                         1: FlexColumnWidth(0.4),
//                         2: FlexColumnWidth(0.18),
//                         3: FlexColumnWidth(0.16),
//                         4: FlexColumnWidth(0.18),
//                         5: FlexColumnWidth(0.13),
//                       },
//                       defaultColumnWidth: FlexColumnWidth(),
//                       border: TableBorder.all(
//                         color: Colors.grey,
//                         style: BorderStyle.solid,
//                         width: 1,
//                       ),
//                       children: [
//                         TableRow(
//                           children: [
//                             buildTableCell('Item', fontSize, FontWeight.bold),
//                             buildTableCell(
//                                 'Material', fontSize, FontWeight.bold),
//                             buildTableCell(
//                                 'PO Quantity', fontSize, FontWeight.bold),
//                             buildTableCell('UOM', fontSize, FontWeight.bold),
//                             buildTableCell(
//                                 'Delivery Date', fontSize, FontWeight.bold),
//                             buildTableCell(
//                                 'Net Price', fontSize, FontWeight.bold),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('10', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('1299', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.5', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('20', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('5322', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.4', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('40', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('4332', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.4', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('20', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('5322', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.4', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('10', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('1299', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.5', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             buildTableCell('20', fontSize, FontWeight.normal),
//                             buildTableCell('90000778-THERMOPORE N70', fontSize,
//                                 FontWeight.normal),
//                             buildTableCell('5322', fontSize, FontWeight.normal),
//                             buildTableCell('EA', fontSize, FontWeight.normal),
//                             buildTableCell(
//                                 '05/04/24', fontSize, FontWeight.normal),
//                             buildTableCell('5.4', fontSize, FontWeight.normal),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           ////////////////////////////////////////////////////////////////////Comment box
//           Spacer(),
//           Container(
//             color: Colors.white,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//               ),
//               margin: EdgeInsets.all(8),
//               child: Column(
//                 children: [
//                   TextField(
//                     cursorColor: Colors.grey,
//                     maxLines: 2, // Adjust as needed for your design
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                       ),
//                       focusColor: Colors.grey,
//                       hintText: 'Type your comment here',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       //////////////////////////////////////////////approve
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.green.shade100,
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                         ),
//                         padding: EdgeInsets.all(8),
//                         alignment: Alignment.center,
//                         margin: EdgeInsets.all(5),
//                         height: 75,
//                         width: 100,
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.task_alt_outlined,
//                               color: const Color.fromARGB(255, 4, 139, 8),
//                             ),
//                             Text(
//                               "Approve",
//                               style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w700,
//                                 color: const Color.fromARGB(255, 4, 139, 8),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       ///////////////////////////////////////////////////////////////////SendBack
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.orange.shade50,
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                         ),
//                         padding: EdgeInsets.all(8),
//                         alignment: Alignment.center,
//                         margin: EdgeInsets.all(5),
//                         height: 75,
//                         width: 105,
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.undo_sharp,
//                               color: Color.fromARGB(255, 216, 161, 8),
//                             ),
//                             Text(
//                               "Send Back",
//                               style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w700,
//                                 color: Color.fromARGB(255, 216, 161, 8),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       /////////////////////////////////////////////////////////////////////////reject
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.red.shade100,
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                         ),
//                         padding: EdgeInsets.all(8),
//                         alignment: Alignment.center,
//                         margin: EdgeInsets.all(5),
//                         height: 75,
//                         width: 100,
//                         child: Column(
//                           children: [
//                             Icon(
//                               Icons.cancel,
//                               color: Colors.red.shade700,
//                             ),
//                             Text(
//                               "Reject",
//                               style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.red.shade700,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget buildTableCell(String text, double fontSize, FontWeight fontWeight) {
//     return TableCell(
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(
//             fontSize: fontSize,
//             fontWeight: fontWeight,
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApprovalDetails extends StatelessWidget {
  final String appBarTitle;

  const ApprovalDetails({Key? key, required this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double defaultFontSize = 7.0;
    double fontSize =
        screenWidth < 500 ? defaultFontSize : defaultFontSize * 1.8;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 240),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset('assets/logo.png', width: 46, height: 46),
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(221, 37, 37, 37),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.blue.shade900,
            size: 35,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Table(
                          columnWidths: {
                            0: FlexColumnWidth(
                                3.5), // Adjust the width of the first column
                            1: FlexColumnWidth(
                                4.5), // Adjust the width of the second column
                            2: FlexColumnWidth(
                                3.5), // Adjust the width of the third column
                            3: FlexColumnWidth(
                                4.5), // Adjust the width of the fourth column
                          },
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Text(
                                    'Purchase Order:',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    'TUV SUB middle East',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    'Order Date:',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '20/12/24',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Text(
                                    'Purchase Org:',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '10-supply chain',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    'Purchase Group:',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '003-supply chain',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Text(
                                    'Currency:',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    'PKR',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Table(
                              columnWidths: {
                                0: FlexColumnWidth(0.1),
                                1: FlexColumnWidth(0.4),
                                2: FlexColumnWidth(0.18),
                                3: FlexColumnWidth(0.16),
                                4: FlexColumnWidth(0.18),
                                5: FlexColumnWidth(0.13),
                              },
                              defaultColumnWidth: FlexColumnWidth(),
                              border: TableBorder.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        'Item', fontSize, FontWeight.bold),
                                    buildTableCell(
                                        'Material', fontSize, FontWeight.bold),
                                    buildTableCell('PO Quantity', fontSize,
                                        FontWeight.bold),
                                    buildTableCell(
                                        'UOM', fontSize, FontWeight.bold),
                                    buildTableCell('Delivery Date', fontSize,
                                        FontWeight.bold),
                                    buildTableCell(
                                        'Net Price', fontSize, FontWeight.bold),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '10', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '1299', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.5', fontSize, FontWeight.normal),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '20', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '5322', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.4', fontSize, FontWeight.normal),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '40', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '4332', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.4', fontSize, FontWeight.normal),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '20', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '5322', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.4', fontSize, FontWeight.normal),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '10', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '1299', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.5', fontSize, FontWeight.normal),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    buildTableCell(
                                        '20', fontSize, FontWeight.normal),
                                    buildTableCell('90000778-THERMOPORE N70',
                                        fontSize, FontWeight.normal),
                                    buildTableCell(
                                        '5322', fontSize, FontWeight.normal),
                                    buildTableCell(
                                        'EA', fontSize, FontWeight.normal),
                                    buildTableCell('05/04/24', fontSize,
                                        FontWeight.normal),
                                    buildTableCell(
                                        '5.4', fontSize, FontWeight.normal),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    cursorColor: Colors.grey,
                    maxLines: 2,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusColor: Colors.grey,
                      hintText: 'Type your comment here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 75,
                        width: 100,
                        child: Column(
                          children: [
                            Icon(
                              Icons.task_alt_outlined,
                              color: const Color.fromARGB(255, 4, 139, 8),
                            ),
                            Text(
                              "Approve",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 4, 139, 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 75,
                        width: 105,
                        child: Column(
                          children: [
                            Icon(
                              Icons.undo_sharp,
                              color: Color.fromARGB(255, 216, 161, 8),
                            ),
                            Text(
                              "Send Back",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 216, 161, 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 75,
                        width: 100,
                        child: Column(
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.red.shade700,
                            ),
                            Text(
                              "Reject",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.red.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTableCell(String text, double fontSize, FontWeight fontWeight) {
  return TableCell(
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    ),
  );
}
