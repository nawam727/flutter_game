import 'package:flutter/material.dart';
import 'package:mobile_application/pages/home_page_bar.dart';
import 'package:mobile_application/pages/javaLesson.dart';

class javaOverview extends StatelessWidget {
  const javaOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        body: Stack(
          children: <Widget>[

            Center(
                child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  iconSize: 22.0,
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => MyHomePage()));
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("My courses",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black)
                                ),
                                SizedBox(
                                  width: 100,
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Center(child: Image.asset('assets/java1.png', scale: 1)),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Text("JAVA Language",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                          SizedBox(
                            height: 10,
                          ),



                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("3.4",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black)),
                                Text("10.5k Learners",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black)),
                                Text("10 Questions",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black)),
                              ],
                            ),
                          ),


                          // DecoratedBox(
                          //     decoration: BoxDecoration(
                          //       color:Colors.lightBlue, //background color of dropdown button
                          //       border: Border.all(color: Colors.black38, width:3), //border of dropdown button
                          //       borderRadius: BorderRadius.circular(20), //border raiuds of dropdown button
                          //     ),
                          //
                          //     child:Padding(
                          //         padding: EdgeInsets.only(left:30, right:30),
                          //         child:DropdownButton(
                          //           value: "New York",
                          //           items: [ //add items in the dropdown
                          //             DropdownMenuItem(
                          //                 child: Text("New York"),
                          //                 value: "New York"
                          //             ),
                          //
                          //             DropdownMenuItem(
                          //               child: Text("Tokyo"),
                          //               value: "Tokyo",
                          //             ),
                          //           ],
                          //           onChanged: (value){ //get value when changed
                          //             print("You selected $value");
                          //           },
                          //           icon: Padding( //Icon at tail, arrow bottom is default icon
                          //               padding: EdgeInsets.only(left:20),
                          //               child:Icon(Icons.arrow_circle_down_sharp)
                          //           ),
                          //           iconEnabledColor: Colors.white, //Icon color
                          //           style: TextStyle(  //te
                          //               color: Colors.white, //Font color
                          //               fontSize: 20 //font size on dropdown button
                          //           ),
                          //           dropdownColor: Colors.redAccent, //dropdown background color
                          //         )
                          //     )
                          // ),




                          // DropdownButton(
                          //   value: "New York",
                          //   items: [ //add items in the dropdown
                          //     DropdownMenuItem(
                          //         child: Text("New York"),
                          //         value: "New York"
                          //     ),
                          //
                          //     DropdownMenuItem(
                          //       child: Text("Tokyo"),
                          //       value: "Tokyo",
                          //     ),
                          //
                          //     DropdownMenuItem(
                          //       child: Text("Moscow"),
                          //       value: "Moscow",
                          //     )
                          //   ],
                          //   onChanged: (value){ //get value when changed
                          //     print("You selected $value");
                          //   },
                          // ),



                          SizedBox(
                            height: 15,
                          ),

                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                OutlinedButton(
                                  child: Text(
                                    "Overview",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "Lessons",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => MyCourse2()));
                                  },
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "Similar Courses",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.punch_clock,
                                ),

                                SizedBox(
                                  width: 10,
                                ),

                                Text("5 Hours",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.file_copy,
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                                Text("Completion Certificate",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.bar_chart,
                                ),

                                SizedBox(
                                  width: 10,
                                ),

                                Text("Beginner",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Text("What will I learn ?",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)
                          ),




                          SizedBox(
                            height: 15,
                          ),
                          Text("Ratings and Reviews",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Text("4.5",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),

                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),





                          Center(
                            child: TextButton(

                              onPressed: () {},
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue, // Background Color
                              ),
                              child: Center(
                                child: const Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          )

                    ],
                      )),


                )),
          ],
        ),
      ),
    );
  }
}