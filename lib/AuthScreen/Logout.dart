import 'package:acm/AuthScreen/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset('assets/logo.png', width: 46, height: 46),
          ),
        ],
        backgroundColor: Colors.white,
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
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 30, 0, 20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.blue.shade900,
                  size: 100,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      child: Text(
                        "XPL User",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.blue.shade900,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: Text(
                              " Log Off",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade900),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
