import 'package:acm/HomeScreens/Dashboard.dart';
import 'package:acm/Widgets/Auth/fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  String _userID = '';
  String _password = '';
  String _message = '';


Future<void> _login() async {
  final String apiUsername = 'abapdev'; // replace with actual API username
  final String apiPassword = 'pakistan'; // replace with actual API password
  final String basicAuth = 'Basic ' + base64Encode(utf8.encode('$apiUsername:$apiPassword'));

  try {
    final response = await http.get(
      Uri.parse('http://paldev.volta.com.pk:8100/sap/opu/odata/sap/ZXPL_MOBILE_API_SRV/LoginSet?sap-client=300'),
      headers: {
        'Authorization': basicAuth,
        'Accept': 'application/json',
       'Cookie': 'SAP_SESSIONID_PAD_300=la6eFB17MOsM7_ohjKswoANwXvEg1BHvgWQAUFarMyE%3d; sap-usercontext=sap-client=300'
      
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> entries = responseData['d']['results'];

      bool userFound = false;
      for (var entry in entries) {
        if (entry['Username'] == _userID && entry['Password'] == _password) {
          userFound = true;
          break;
        }
      }

      if (userFound) {
        setState(() {
          Get.snackbar('Successfully Sign in', 'Enjoy your sap app!');
        });
        print("Navigating to Dashboard"); // Debug print statement
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Dashboard(),
          ),
        );
      } else {
        setState(() {
          Get.snackbar('Login Failed', 'User not found');
        });
      }
    } else {
      setState(() {
        _message = 'Error fetching user data: ${response.statusCode}';
      });
    }
  } catch (e) {
    setState(() {
      _message = 'An error occurred: $e';
    });
  }
}

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = _userID.isNotEmpty && _password.isNotEmpty;
    final bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top + 30),
                    Container(
                      height: 150,
                      child: Image.asset("assets/logo.png"),
                    ),
                    SizedBox(height: 10),
                    Icon(
                      Icons.account_circle_outlined,
                      size: 100,
                      color: Color.fromARGB(255, 148, 148, 148),
                    ),
                    SizedBox(height: 20),
                    Authfields(
                      label: "User ID",
                      obscuretext: false,
                      onChanged: (value) {
                        setState(() {
                          _userID = value;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    Authfields(
                      label: "Password",
                      obscuretext: true,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isButtonEnabled ? _login : null,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            isButtonEnabled
                                ? Colors.blue.shade900
                                : Color.fromARGB(255, 250, 249, 249),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isButtonEnabled
                                ? Colors.white
                                : Color.fromARGB(246, 201, 200, 200),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue.shade900, fontSize: 13),
                    ),
                    SizedBox(height: 10),
                    Text(
                      _message,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/sap.png",
            height: 50,
          ),
        ],
      ),
    );
  }
}

