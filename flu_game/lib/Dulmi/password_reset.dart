import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_nplay/successful_reset_password.dart';

//import 'package:npaly_application/Pages/card_paymnet.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key, required String inputText});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

 TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();

String passwordError = '';
String confirmpasswordError='';


String  password='';
String confirmpass='';



class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
                    "Reset Password",
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
                    "Enter your new password",
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
                    "assets/newpass.png",
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



            SizedBox(
              height: size.height / 2.2,
              width: double.infinity,
              child: Column(
                children: [
                 
                      //time taken
                                              
                               //time taken
                                ConstrainedBox(
                                  
                                  constraints: BoxConstraints(
                                      minHeight: size.height/35,
                                      maxWidth: size.width/1.2,
                                 ),
                                                  
                                 
                                  child: TextFormField(
                                    obscureText: true,
             


              decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: HexColor("B0B0B0"),
                ),
              ),


              isDense: true,
           errorText: passwordError.isNotEmpty ? passwordError : null,
              errorMaxLines: 1,
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 12.5,
              ),


              
            ),


            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              letterSpacing: 0.3,
      
        
          ),
        ),
                                       
             ),





 SizedBox(
  height: size.height/30,
 ),





                //date 
                        const Padding(
                          padding: EdgeInsets.only(left: 30.0,bottom: 10),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Confirm Password',
                            style: TextStyle(
                                                       
                                         fontSize: 16,
                                          color: Colors.black,
                                         //color: Color.fromARGB(235, 158, 157, 154),
                                         letterSpacing: 0.3,
                                         
                                         
                                         
                             ),
                            ),
                          ),
                        ),
                   




                   
                         
                   


                   
                               //time taken
                                ConstrainedBox(
                                  
                                  constraints: BoxConstraints(
                                      minHeight: size.height/35,
                                      maxWidth: size.width/1.2,
                                 ),
                                                  
                                 
                                  child: TextFormField(
        

              controller: ConfirmPasswordController,

              obscureText: true,
             

                   
         onChanged: (value) {
          setState(() {
            // Update the student ID and trigger validation
            confirmpass = value;
            doValidationconfirmpassword();
          });
        },



              decoration: InputDecoration(
              hintText: 'Confirm Password',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: HexColor("B0B0B0"),
                ),
              ),


              isDense: true,
              errorText:  confirmpasswordError.isNotEmpty ? confirmpasswordError : null,
              errorMaxLines: 1,
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 12.5,
              ),


              
            ),


            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              letterSpacing: 0.3,
      
        
          ),
        ),
                                       
             ),


                                    



                  //space between  box continue button
                  SizedBox(height: size.height / 15),



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
                       doValidationpassword();
                       doValidationconfirmpassword();

                           dovalidation();

                        //myController.clear();
                       
                        ///
                        ///
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessResetPassPage(
                              inputText: '',
                            ), // Replace with the screen you want to navigate to
                          ),
                        );
   
                  

                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),

                   
                ],
              ),
            ),
          ],
            ),
          ),
        ));
  }


  void doValidationpassword() {
 String password = PasswordController.text.trim();
      
            if(password.isNotEmpty){
            setState(() {
                 passwordError='';
            });

    } 
    
  }



  void doValidationconfirmpassword() {
 String confirmpass = ConfirmPasswordController.text.trim();
 String password = PasswordController.text.trim();
      
             



            if(confirmpass.isNotEmpty){
            setState(() {
                 confirmpasswordError='';
            });

    } else if(confirmpass.isEmpty){
            setState(() {
                 confirmpasswordError='Please re enter your password';
            });

    }
    
  }


  dovalidation(){
    if(password.isNotEmpty && confirmpass.isNotEmpty ){
      setState(() {
        
         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessResetPassPage(
                              inputText: '',
                            ), // Replace with the screen you want to navigate to
                          ),
                        );
   
                       
      });

    
    }
     
  }
  
}