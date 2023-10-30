// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_application/pages/home_page_bar.dart';
import 'package:mobile_application/pages/verify_account_1.dart';

class personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String selectedCountryCode = "+94"; // Default country code
  TextEditingController mobileNumberController = TextEditingController();

  @override
  void dispose() {
    mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
        title: Text(
          "Personal Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 1, 14),
                constraints: BoxConstraints(maxWidth: 320),
                child: Text(
                  "Your personal information will help our service reach you easily",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5), // Add spacing between text and profile picture
            Stack(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage:
                      AssetImage("assets/profile_photo.jpg"), // profile image
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.black, //  icon color
                      ),
                      onPressed: () {
                        //   action
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Text(
                "user@nsbm.ac.lk",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppins',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), // people icon
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: DropdownButton<String>(
                        value: selectedCountryCode,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCountryCode = newValue!;
                          });
                        },
                        items: <String>["+94", "+44", "+91", "+61", "+1"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        icon: Icon(Icons.arrow_drop_down),
                        underline: Container(),
                        dropdownColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),

                  Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Center(
                          child: OutlinedButton(
                            child: Text(
                              "   Verify Account   ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => veryfy()));

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),



      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              //  verification logic
            },
            child: Text("Continue"),
          ),
        ),
      ),
    );
  }
}
