//import 'package:dropdown_button2/dropdown_button2.dart';
//import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_nplay/forgot_password.dart';
import 'package:login_nplay/signup.dart';
//import 'package:npaly_application/Pages/card_paymnet.dart';

class signin extends StatelessWidget {
  const signin({Key? key, required String inputText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

        //background color of the page
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 1.8,
              child: Column(
                children: [
                  //space in top
                  SizedBox(
                    height: size.height / 25,
                  ),

                  //text- pay here
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  //space between 2 texts
                  SizedBox(
                    height: size.height / 100,
                  ),

                  //text - get paid for nsbm
                  const Text(
                    "Sign in to your account",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                    ),
                  ),

                  //space between text and image
                  /*    SizedBox(
                  height: size.height/500,    
                ),
                */

                  //image
                  Image.asset(
                    "login1.png",
                    height: size.height / 2.45,
                    width: size.width / 1.1,
                  ),
                ],
              ),
            ),

           
            SizedBox(
              height: size.height / 100,
              width: size.width / 3,
            ),



            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    //color: Color.fromARGB(235, 158, 157, 154),
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),



            SizedBox(
              height: size.height / 2.2,
              width: double.infinity,
              child: Column(
                children: [
                 
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: size.height / 20,
                        maxWidth: size.width / 1.2),
                    child: const TextField(
                      //controller: myController,

                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),

                        //display text
                        hintText: "Enter your Username",

                        hintStyle: TextStyle(),

                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                          color: Colors.black26,
                        )),

                        //error message
                      ),

                      style: TextStyle(
                        fontSize: 16,
                        //color: HexColor('#39B54A'),
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),

                  //space between list and amount box
                  SizedBox(
                    height: size.height / 40,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 10),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          //color: Color.fromARGB(235, 158, 157, 154),
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),



                  //password
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: size.height / 20,
                        maxWidth: size.width / 1.2),
                    child: const TextField(
                      //controller: myController,
                      obscureText: true,
                      //keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),

                        //display text
                        hintText: "Enter your Password",

                        hintStyle: TextStyle(),

                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                          color: Colors.black26,
                        )),

                       
                      ),

                      style: TextStyle(
                        fontSize: 16,
                        //color: HexColor('#39B54A'),
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),



                  SizedBox(
                    height: size.height/50,
                  ),


                  
                    //forgot password
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                      
                      
                                    onTap: () {
                                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(inputText: ''),
                            ),
                          );
                                    }
                                    
                                    
                                    ,
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: HexColor('#39B54A'),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                      ),
                    ),





                  //space between  box continue button
                  SizedBox(height: size.height / 25),



                  //continue button

                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor("#39B54A"),
                      ),
                      onPressed: () {
                        // doValidation(BuildContext);



         
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),




                  SizedBox(
                    height: size.height/50,
                    
                  ),
                        



                        SizedBox(
                          width: size.width/2,
                        ),


                  Center(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text("Do not have an account?",
                          style: TextStyle(
                            fontSize: 14,
                          ),)),
                    
                        GestureDetector(
                        
                        
                                      onTap: () {

                                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(inputText: ''),
                            ),
                          );
                                      }
                                      
                                      
                                      ,
                                      child: Text(
                                        '  Sign UP',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: HexColor('#39B54A'),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                    
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
            ),
          ),
        ));
  }


  
}