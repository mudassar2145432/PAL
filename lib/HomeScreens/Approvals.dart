// ignore_for_file: prefer_const_constructors

import 'package:acm/HomeScreens/Dashboard.dart';
import 'package:acm/HomeScreens/SupplierInvoices.dart';
import 'package:acm/HomeScreens/approvalDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Approvals extends StatelessWidget {
  final String approvalType;
  final String appBarTitle;

  const Approvals(
      {Key? key, required this.approvalType, required this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content;

    // Determine content based on approvalType
    if (approvalType == "PR") {
      content = Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApprovalDetails(
                    appBarTitle: "PR Approvals",
                  ),
                ));
          },

          //////////////////////////////////////////////////////// PR Approval Screen///////////
          child: Container(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle: "TUV SUB Middle East",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "TUV SUB Middle East",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "12/11/22",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 3 - Melad Kaskas",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "7000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle:
                              "Bin Diari & Partners Contr.& Gen. Miant",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Bin Diari & Partners Contr.& Gen. Miant",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 6 - Support User",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "4000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle: "Suuby Foundations materials",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Suuby Foundations materials",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 32 - XPL",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "7000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]);
      ////////////////////////////////////////////////////////////////////////////////////////////////PO approval Screen
    } else if (approvalType == "PO") {
      content = Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ApprovalDetails(appBarTitle: "PO Approvals"),
                ));
          },
          child: Container(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle: "Arabian group of industries",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "Arabian group of industries",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "12/11/22",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 32 - Melad Kaskas",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "9000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle:
                              "Bin Diari & Partners Contr.& Gen. Miant",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Bin Diari & Partners Contr.& Gen. Miant",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 6 - Support User",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "4000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle:
                              "Shinva admire industrial working Business",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Shinva admire industrial working Business",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 62 - Support User",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "6000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]);
      //////////////////////////////////////////////////////////////////////////Reservation Approvals
    } else if (approvalType == "Reservation") {
      content = content = Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ApprovalDetails(appBarTitle: "Reservation Approvals"),
                ));
          },
          child: Container(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle: "Selmens Aksari Subnet Grouping",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "Selmens Aksari Subnet Grouping",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "12/11/22",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "Supper Invoice ID 2 - Melad Kaskas",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "1000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle:
                              "Shinva admire industrial working Business",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Shinva admire industrial working Business",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 62 - Support User",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "8000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalDetails(
                          appBarTitle:
                              "Bin Diari & Partners Contr.& Gen. Miant",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            "Bin Diari & Partners Contr.& Gen. Miant",
                            style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "02/11/24",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Supper Invoice ID 6 - Support User",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "4000 AED",
                            style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(221, 37, 37, 37)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]);
    } else if (approvalType == "TBC") {
      content = Text("Here is TBC");
    } else {
      content = Text("Comming soon under working");
    }
/////////////////////////////////////////////////////////////////////////////////////appp BAR
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
        leading: Row(
          children: [
            // Icon(
            //   Icons.account_circle_outlined,
            //   color: Colors.blue.shade900,
            //   size: 40,
            // ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.navigate_before,
                color: Colors.blue.shade900,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Display content based on approvalType
              content,
            ],
          ),
        ),
      ),
    );
  }
}
