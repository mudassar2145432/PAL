import 'package:acm/AuthScreen/Logout.dart';
import 'package:acm/HomeScreens/Approvals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset('assets/logo.png', width: 46, height: 46),
            ),
          ],
          title: Text(
            "My Launchpad",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(221, 37, 37, 37)),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Logout(),
                  ));
            },
            child: Icon(
              Icons.account_circle_outlined,
              color: Colors.blue.shade900,
              size: 40,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue.shade900),
                ),
              ),
              Tab(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          insetPadding: EdgeInsets.fromLTRB(10, 60, 10, 110),
                          child: Container(
                            width: double.infinity,
                            child: MoreScreen(),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "More",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(221, 37, 37, 37)),
                  ),
                ),
              ),
            ],
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue.shade900,
                  width: 2,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            Container(), // Placeholder for the second tab
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 240),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 15, 15),
                alignment: Alignment.topLeft,
                child: Text(
                  textAlign: TextAlign.left,
                  "Home",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Approvals(
                              approvalType: "PR",
                              appBarTitle: "Purchase Request Approvals",
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(18),
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                "PR Approval Request",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromARGB(221, 37, 37, 37)),
                              ),
                            ),
                            Row(children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.beenhere_outlined,
                                  color: Colors.blue.shade900,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3",
                                style: TextStyle(fontSize: 25),
                              ),
                            ]),
                            Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Open tasks",
                                  style: TextStyle(fontSize: 12),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Approvals(
                                approvalType: 'PO',
                                appBarTitle: 'Purchase Order Approvals',
                              ),
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(18),
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                "PO Approval Request",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromARGB(221, 37, 37, 37)),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.fact_check_outlined,
                                    color: Colors.blue.shade900,
                                    size: 42,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Open tasks",
                                  style: TextStyle(fontSize: 12),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Approvals(
                                approvalType: 'Reservation',
                                appBarTitle: 'Reservation Approval',
                              ),
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(18),
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                "Reservation Approval Request",
                                style: GoogleFonts.notoSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromARGB(221, 37, 37, 37)),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.flaky_outlined,
                                    color: Colors.blue.shade900,
                                    size: 42,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Open tasks",
                                  style: TextStyle(fontSize: 12),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Approvals(
                              approvalType: "TBD",
                              appBarTitle: 'TBD Approvals',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(18),
                        height: 180,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "TBD",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: const Color.fromARGB(221, 37, 37, 37)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.task_outlined,
                                    color: Colors.blue.shade900,
                                    size: 42,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Open tasks",
                                  style: TextStyle(fontSize: 12),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.request_quote_outlined,
                      size: 40,
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Supplier Invoices",
                      style: GoogleFonts.notoSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(221, 37, 37, 37)),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "2",
                      style: GoogleFonts.notoSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(221, 37, 37, 37)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.store_outlined,
                      color: Colors.blue.shade900,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Purchase Orders",
                      style: GoogleFonts.notoSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(221, 37, 37, 37)),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      " 1",
                      style: GoogleFonts.notoSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(221, 37, 37, 37)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Image.asset(
                  "assets/sap.png",
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    // Handle tapping on Home option
                  },
                ),
                ListTile(
                  title: Text('Option 1'),
                  onTap: () {
                    // Handle tapping on Option 1
                  },
                ),
                ListTile(
                  title: Text('Option 2'),
                  onTap: () {
                    // Handle tapping on Option 2
                  },
                ),
                ListTile(
                  title: Text('Option 3'),
                  onTap: () {
                    // Handle tapping on Option 3
                  },
                ),
                ListTile(
                  title: Text('Option 4'),
                  onTap: () {
                    // Handle tapping on Option 4
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog box
              },
              child: Text('Cancel'),
            ),
          ),
        ],
      ),
    );
  }
}



