import 'package:flutter/material.dart';
import 'package:mad_project/components/back_dots.dart';
import 'package:mad_project/pages/TermsService.dart';
import 'package:mad_project/pages/terms_conditions.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(
        title: "About",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        //n-side for android
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "N-Side for\nAndroid",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),


            //version
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 2),
                child: const Text(
                  "version",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 101, 101),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),


            //version number
             Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: const Text(
                  "425.0.0.22.49",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),


            //nsbm n-side and
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5,right: 30),
              child: const Text(
                "NSBM N-Side and N-Side logos are trademarks of N-Side Inc.\nAll rights reserved.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),


            //NSBM N-Side for Android
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 5,right: 40),
              child: const Text(
                "NSBM N-Side for Android is built using open source software:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),


              //licenses
             Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TermsService()),
                                );
                  },
                  child: const Text(
                    "Licenses.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 38, 185),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),


            //terms of services
             Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TermsConditions()),
                                );
                  },
                  child: const Text(
                    "Terms and Condition",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 38, 185),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
        ],
        ),
      ),
      ),
    );
  }
}