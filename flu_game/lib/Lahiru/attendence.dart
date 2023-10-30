import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/home_page.dart';
import 'attendence_event.dart';

class AttendenceMark extends StatelessWidget {
  const AttendenceMark({Key? key, required String inputText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Attendance",
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0.3,
            ),
          ),
        ),
        backgroundColor: HexColor('#39B54A'),

        //to chnge app bar size

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.01),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 80,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Mark Your Attendance",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 100,
              ),
              Container(
                width: size.width,
                height: size.height / 4,

                //color: const Color.fromARGB(255, 255, 255, 255), // Brown color for the outer container
                padding: const EdgeInsets.all(16.0),

                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(33, 164, 165, 167),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(157, 121, 99, 98),
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .baseline, // Align children at the baseline
                              textBaseline: TextBaseline
                                  .alphabetic, // Use the alphabetic baseline

                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: size.height / 25,
                                    width: size.width / 1.2,
                                    child: const Text(
                                      "Chess Practises",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        EvaIcons
                                            .calendarOutline, // the Eva Icons
                                        color: Color.fromARGB(225, 36, 3, 3),
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: size.width / 35,
                                      ),
                                      Text(
                                        "31 Aug 2023",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //middle space
                        SizedBox(
                          height: size.height / 40,
                        ),

                        // First row
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: size.height / 10,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "From :\n\nTo :",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: size.height / 10,
                                //color: Colors.amber,

                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "10:00 AM\n\n11:00 AM",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Align(
                    child: Text(
                      "USe this QR Code to mark yor attendance",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Important",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "You can mark this QR code only with university WiFi.\n This QR code is valid only for 15 mins.",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ]),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height / 3.4,

                    // color: const Color.fromARGB(255, 255, 255, 255), // Brown color for the outer container
                    padding: const EdgeInsets.all(16.0),

                    child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(33, 164, 165, 167),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromARGB(157, 121, 99, 98),
                            width: 0.5,
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/qr.jpeg",
                                height: size.height / 2,
                                width: size.width / 2,
                              ),
                            ),
                          ],
                        )),
                  ),

                  SizedBox(
                    height: size.height / 25,
                  ),

                  //continue button
                  SizedBox(
                    width: size.width / 1.2,
                    height: size.height / 21,
                    child: ElevatedButton(
                      onPressed: () {
                        ///navigation check again
                        ///
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    inputText: '',
                                  )),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor("#39B54A"),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
