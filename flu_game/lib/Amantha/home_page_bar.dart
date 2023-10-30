import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:mobile_application/pages/Artificial_Intelligence.dart';
import 'package:mobile_application/pages/javaOverview.dart';
import 'package:mobile_application/pages/personal_details_1.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Color.fromRGBO(0, 0, 0, 1),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.photo),
            color: Color.fromRGBO(0, 0, 0, 1),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => personal()));
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white],
            )),
          ),
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

                    Text("Hello Student",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.amber)),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      child: Text("Enjoy our services !",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                    ),
                    //BalanceCard(),
                    SizedBox(
                      height: 10,
                    ),

                    SearchBar(
                      constraints: const BoxConstraints(
                        maxHeight: 50,
                      ),
                      hintText: 'Search',
                      hintStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.grey)),
                      leading: const Icon(Icons.search),
                      shape: MaterialStateProperty.all(
                          const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),

                      trailing: [
                        IconButton(
                          icon: const Icon(Icons.keyboard_voice),
                          onPressed: () {
                            print('Use voice command');
                          },
                        ),
                      ],
                      // other arguments
                    ),

                    ImageSlideshow(
                      indicatorColor: Colors.blue,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset('assets/slideshow1.png', scale: 0.5),
                        Image.asset('assets/slideshow1.png', scale: 0.5),
                        Image.asset('assets/slideshow1.png', scale: 0.5),
                      ],
                    ),

                    SizedBox(
                      height: 0,
                    ),
                    Image.asset('assets/second.png', scale: 0.01),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 1,
                          ),
                          Text("Category",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                          SizedBox(
                            width: 210.0,
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Color.fromRGBO(0, 0, 0, 1),
                            iconSize: 22.0,
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 8.0,
                            height: 0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width) * 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                OutlinedButton(
                                  child: Text(
                                    "Software Engineering",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "   Computer Science   ",
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
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                OutlinedButton(
                                  child: Text(
                                    " MIS ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    " Computer Network ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "Cyber Security",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 1,
                          ),
                          Text("My Path",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                          SizedBox(
                            width: 210.0,
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Color.fromRGBO(0, 0, 0, 1),
                            iconSize: 22.0,
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 8.0,
                            height: 0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width) * 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                OutlinedButton(
                                  child: Text(
                                    "JAVA Language",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => javaOverview()));
                                  },
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "   Artificial Intelligence   ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => ai()));
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                OutlinedButton(
                                  child: Text(
                                    " python ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    " C Language ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                OutlinedButton(
                                  child: Text(
                                    "C#",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/third.png', scale: 0.01),

                    SizedBox(
                      height: 10,
                    ),



                    // Container(
                    //   alignment: Alignment.center,
                    //   width: MediaQuery.of(context).size.width,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: <Widget>[
                    //       SizedBox(
                    //         width: 1,
                    //       ),
                    //       Text("Top Student",
                    //           style: TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w800,
                    //               color: Colors.black)),
                    //       SizedBox(
                    //         width: 185.0,
                    //       ),
                    //       IconButton(
                    //         icon: Icon(Icons.arrow_forward_ios),
                    //         color: Color.fromRGBO(0, 0, 0, 1),
                    //         iconSize: 22.0,
                    //         onPressed: () {},
                    //       ),
                    //       SizedBox(
                    //         width: 8.0,
                    //         height: 20,
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // TitleText(
                    // text: "Transactions",
                    // ),
                    // _transectionList(),
                  ],
                )),
          )),
        ],
      ),
    ));
  }
}
