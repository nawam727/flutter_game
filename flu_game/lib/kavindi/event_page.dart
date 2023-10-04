import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mad_project/components/back_dots.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(title: 'Feedback & Suggestions'),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/fb.jpg',
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.32,
                    fit: BoxFit.fill,
                  ),
                ),

                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, bottom: 10),
                  // Add padding to move the text down
                  child: Text(
                    'How happy are you with this application?',
                    style: TextStyle(
                        fontSize: 17,
                        color: HexColor('423E3E'),
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.left,
                  ),
                ),

                // Add the Rating Bar here
                Center(
                  child: RatingBar.builder(
                    initialRating:
                        3.5, 
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 45,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      // Handle the updated rating here
                      print(rating);
                    },
                  ),
                ),

                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  // Add padding to move the text down
                  child: Text(
                    "Let us know your thoughts",
                    style: TextStyle(
                        fontSize: 17,
                        color: HexColor('423E3E'),
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.left,
                  ),
                ),

                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 30),
                  child: Text(
                    "Do you have thoughts, you'd like to share?",
                    style: TextStyle(
                      fontSize: 16,
                      color: HexColor('676363'),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 28.5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: TextField(
                      maxLines: null,
                      expands: true,
                      keyboardType: TextInputType.multiline,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: HexColor('F5F5F5'),
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 18, left: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: HexColor('FFFFFF'), fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('00B251'),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        color: HexColor("C4C5C2"),
                      ),
                    ),
                    fixedSize: Size(120, 45),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 18, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: HexColor('000000'), fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        HexColor("FFFFFF"), 
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        color:
                            HexColor("C4C5C2"), 
                      ),
                    ),
                    fixedSize: Size(120, 45),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
