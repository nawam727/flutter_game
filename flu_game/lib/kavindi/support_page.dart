import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mad_project/components/back_dots.dart';
import 'package:mad_project/pages/chat_page.dart';
import 'package:mad_project/pages/drawer_screen.dart';
import 'package:mad_project/pages/feedback_page.dart';
import 'package:mad_project/pages/get_started.dart';
import 'package:mad_project/pages/help_center.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: BackDots(
        title: "Support",
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              //how can help?
              Padding(
                padding: EdgeInsets.all(size.width * 0.05),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.2,
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.width * 0.03),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 247, 221),
                    borderRadius: BorderRadius.circular(size.width * 0.06),
                    border: Border.all(
                      color: HexColor("#00B251"),
                      width: size.width * 0.0004,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: size.width * 0.006,
                        blurRadius: size.width * 0.03,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    //text and image
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'How can we help you?',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'assets/images/support.png',
                          width: size.width * 0.248,
                          alignment: Alignment.bottomRight,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //search bar
              Padding(
                padding: EdgeInsets.only(left: 21, right: 21),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      // Text to be displayed before the input field
                      hintText: 'Start typing your search......',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.width * 0.025),
                        borderSide:
                            BorderSide(color: HexColor("#00B251") //border color
                                ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: HexColor(
                                "#00B251")), // Border color when focused
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Cards(
                          "assets/images/information.png",
                          'Get Started',
                          15,
                          size,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GetStarted(),
                              ),
                            );
                            // Your onTap action here
                            print('Card 1 tapped!');
                          },
                        ),
                        Cards(
                          "assets/images/conversation.png",
                          "Help Center",
                          15,
                          size,
                          () {
                            // Your onTap action here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HelpCenter(),
                              ),
                            );
                            print('Card 2 tapped!');
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Cards(
                          "assets/images/call.png",
                          'Chat with Us',
                          15,
                          size,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatPage(),
                              ),
                            );
                            // Your onTap action here
                            print('Card 3 tapped!');
                          },
                        ),
                        Cards(
                          "assets/images/chat.png",
                          "Feedback and Suggestions",
                          13,
                          size,
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedbackPage(),
                              ),
                            );
                            // Your onTap action here
                            print('Card 4 tapped!');
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector Cards(
    String imageLink,
    String title1,
    double fontsize,
    Size size,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.378,
        height: size.width * 0.378,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(left: 33, top: 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 214, 247, 221),
          borderRadius: BorderRadius.circular(size.width * 0.06),
          border: Border.all(
            color: HexColor("#00B251"), // Set your desired border color here
            width: 0.3, // Set the border width as needed
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: size.width * 0.006,
              blurRadius: size.width * 0.03,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(size.width * 0.019),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // add this
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.width * 0.06),
                  topRight: Radius.circular(size.width * 0.06),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.width *
                          0.03), // Add padding to move the text down
                  child: Image.asset(
                    imageLink,
                    width: size.width * 0.4,
                    height: size.width * 0.13,
                    alignment: Alignment.center,
                    //fit:BoxFit.fill
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.width * 0.050),
                child: Text(
                  title1,
                  style: TextStyle(
                      fontSize: fontsize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
