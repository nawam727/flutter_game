import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/RequestLettersPage.dart';
import 'package:npaly_application/Pages/athletic_club.dart';
import 'package:npaly_application/Pages/attendence_event.dart';
import 'package:npaly_application/Pages/badminton_club.dart';
import 'package:npaly_application/Pages/chess_club.dart';
import 'package:npaly_application/Pages/nav_bar.dart';
import 'package:npaly_application/Pages/payment_main_page.dart';
import 'package:npaly_application/Pages/payment_selection.dart';
import 'package:npaly_application/Pages/reservation_page.dart';
import 'package:npaly_application/Pages/rugby_club.dart';
import 'package:npaly_application/Pages/volleyball_club.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String inputText});

  get title => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //search bar
        automaticallyImplyLeading: false,
        title: TextField(
          keyboardType: TextInputType.text,
          controller: title,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search_sharp,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search..',
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),

        backgroundColor: HexColor('#39B54A'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //space in top of the page

            //row for the logos
            SizedBox(
              height: size.height / 8,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    Padding(
                      //space between image and the corner
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset(
                        "assets/nsbm-logo-best.png",
                        height: size.height / 3,
                        width: size.width / 3.3,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      //height: size.height/35,
                      width: size.width / 20,
                    ),
                    Container(
                      height: size.height / 15,
                      width: size.width / 400,
                      color: Colors.grey,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(
                      height: size.height / 30,
                      width: size.width / 20,
                    ),
                    Image.asset(
                      "assets/logo1.png",
                      height: size.height / 3,
                      width: size.width / 3.3,
                      alignment: Alignment.center,
                    )
                  ],
                ),
              ),
            ),

            //space in first row and cover image

            //cover image
            Image.asset(
              "assets/sports.jpg",
              height: size.height / 5,
              width: size.width / 1.1,
            ),

            //space in cover image and container
            SizedBox(
              height: size.height / 60,
              width: size.width / 5,
            ),
//////////////////////////////////////////////////////////////
            //sports clubs
            Container(
              height: size.height / 6.5,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: HexColor("B0B0B0"),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "My Sport Clubs",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign
                            .left, //make the correct align of the image
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    width: size.width,
                    height: size.height / 10,
                    color: HexColor('#39B54A'),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Green color containers

                          SizedBox(width: 10),

//buttons of the scroll bar

                          //buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Chesspage(
                                            inputText: '',
                                          )),
                                );
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/chess.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 45, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Chess",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Rugbypage(
                                            inputText: '',
                                          )),
                                );
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/ruger.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 35, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Rugby",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const VolleyballPage(
                                            inputText: '',
                                          )),
                                );
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/Volleyball.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 40, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Volley Ball",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          //buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Athleticpage(
                                            inputText: '',
                                          )),
                                );
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/athletic.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 45, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Athletics",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/basketball.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 50, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Basket Ball",
                                      style: TextStyle(
                                          fontSize:
                                              10, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/netball.png", // Replace with your image asset path

                                    height: 35, // Adjust the height as needed

                                    width: 45, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Net Ball",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/Cricket.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 45, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Cricket",
                                      style: TextStyle(
                                          fontSize:
                                              12, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

//buttons of the scroll bar
                          Container(
                            height: 65,
                            width: 79,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Adjust the border radius
                                ),

                                padding:
                                    EdgeInsets.all(1.0), // Adjust the padding

                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/ttenis.png", // Replace with your image asset path

                                    height: 40, // Adjust the height as needed

                                    width: 45, // Adjust the width as needed

                                    // fit: BoxFit.cover, // Adjust the image fit as needed
                                  ),

                                  SizedBox(
                                      height:
                                          3), // Add spacing between image and text

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Table Tenis",
                                      style: TextStyle(
                                          fontSize:
                                              10, // Adjust the font size as needed

                                          //fontWeight: FontWeight.bold,

                                          color: Colors
                                              .black // Adjust the font weight as needed

                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
//////////////////////
            ///
            ///
            ///
            ///
            //middle space
            SizedBox(
              height: size.height / 110,
              width: size.width / 10,
            ),

            Row(
              children: [
                // Green color containers

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 9,
                        width: size.width / 2.6,
                        decoration: BoxDecoration(
                          color: HexColor('#39B54A'),
                          borderRadius: BorderRadius.circular(5),
                        ),
///////////////////////////////////////////

                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ReservationPage()),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              Image.asset(
                                "assets/event.png", // Replace with your image asset path

                                height: 50, // Adjust the height as needed

                                width: 50, // Adjust the width as needed

                                // fit: BoxFit.cover, // Adjust the image fit as needed
                              ),

                              SizedBox(
                                  height:
                                      3), // Add spacing between image and text

                              Text(
                                "Reservations",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  letterSpacing: 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /////////////////////
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 9,
                        width: size.width / 2.6,
                        decoration: BoxDecoration(
                          color: HexColor('#39B54A'),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PaymentMainPage(
                                        inputText: '',
                                      )),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              Image.asset(
                                "assets/payment1.png", // Replace with your image asset path

                                height: 50, // Adjust the height as needed

                                width: 50, // Adjust the width as needed

                                // fit: BoxFit.cover, // Adjust the image fit as needed
                              ),

                              SizedBox(
                                  height:
                                      3), // Add spacing between image and text

                              Text(
                                "Payment",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  letterSpacing: 0.1,
                                ),
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

            SizedBox(
              height: size.height / 40,
            ),

            Row(
              children: [
                // Green color containers

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 9,
                        width: size.width / 2.6,
                        decoration: BoxDecoration(
                          color: HexColor('#39B54A'),
                          borderRadius: BorderRadius.circular(5),
                        ),
///////////////////////////////////////////

                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RequestLettersPage(
                                        inputText: '',
                                      )),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              Image.asset(
                                "assets/letter.png", // Replace with your image asset path

                                height: 50, // Adjust the height as needed

                                width: 50, // Adjust the width as needed

                                // fit: BoxFit.cover, // Adjust the image fit as needed
                              ),

                              SizedBox(
                                  height:
                                      3), // Add spacing between image and text

                              Text(
                                "Request Letters",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  letterSpacing: 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /////////////////////
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    children: [
                      Container(
                        height: size.height / 9,
                        width: size.width / 2.6,
                        decoration: BoxDecoration(
                          color: HexColor('#39B54A'),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TodayAttendanceEvents(
                                        inputText: '',
                                      )),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),

                              Image.asset(
                                "assets/Attendance.png", // Replace with your image asset path

                                height: 50, // Adjust the height as needed

                                width: 50, // Adjust the width as needed

                                // fit: BoxFit.cover, // Adjust the image fit as needed
                              ),

                              SizedBox(
                                  height:
                                      3), // Add spacing between image and text

                              Text(
                                "Attendance",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  letterSpacing: 0.1,
                                ),
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

            SizedBox(
              height: size.height / 25,
              width: size.width / 20,
            ),

            //event container
            // ...

            Container(
              height: size.height / 3.3,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: HexColor("B0B0B0"),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "Recent Events",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 8,
                    width: size.width,
                    child: Row(
                      children: [
                        Padding(
                          //space between image and the corner
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            "assets/nsbm-logo-best.png",
                            height: size.height / 4,
                            width: size.width / 4.5,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          //height: size.height/35,
                          width: size.width / 20,
                        ),
                        Text(
                          'Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 1000,
                    //padding: const EdgeInsets.all(5),
                    width: size.width,

                    color: Colors.grey,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(
                    height: size.height / 8,
                    width: size.width,
                    child: Row(
                      children: [
                        Padding(
                          //space between image and the corner
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            "assets/nsbm-logo-best.png",
                            height: size.height / 4,
                            width: size.width / 4.5,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          //height: size.height/35,
                          width: size.width / 20,
                        ),
                        Text(
                          'Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

// ...
            SizedBox(
              height: size.height / 25,
              width: size.width / 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPage(),
    );
  }
}
