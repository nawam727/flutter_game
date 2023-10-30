import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_nplay/signin.dart';
import 'package:login_nplay/success_signup.dart';


class SignUpPage extends StatefulWidget{
  const SignUpPage({super.key, required String inputText});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}


 
   //text editing controller for textfeilds
  TextEditingController IdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController FacultyController = TextEditingController();
  TextEditingController UserNAmeController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController = TextEditingController();



String idError = '';
String nameError = '';
String emailError='';
String usernameError='';
String passwordError = '';
String confirmpasswordError='';


String  id='';
String  name='';
String email='';
String faculty='';
String  username='';
String  password='';
String confirmpass='';




class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context){

  Size size=MediaQuery.of(context).size; 

 
    return Scaffold(
          
          //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),



      body:SingleChildScrollView(
        
        child: Container(

          child: Column(
              
             children: [
        


                //space in the top of the page
                SizedBox(
                  height: size.height/45,
                ),

                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Get Started",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.1
                  ),
                  ),
                ),
        

                //text
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Center(
                    child: Text("Get a new experience with us",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    ),
                  ),
                ),

                  

                   //space in the top of the page
                SizedBox(
                  height: size.height/35,
                ),



        
              Center(
                
                child: Container(
                  
        
              
                  height: size.height/0.8,
                  width: size.width/1.125,
                        
                       
                  decoration: BoxDecoration(
                  color: Color.fromARGB(33, 164, 165, 167), 
                  //color: HexColor("#B0B0B0"), // Fill color
                  /////////////////////////////////////////////////////////////////////////
        
                  border: Border.all(
                  color: Color.fromARGB(157, 121, 99, 98),  // Border color
                  width: 0.5,         // Border width
                 
                  ),
                  borderRadius: BorderRadius.circular(6),  // Border radius
                ),
                  
        
        
        
                   child: Column(
                   
                    children: [
                      
                   
                          
                   
                            //middle space in container
                                 SizedBox(
                                    height: size.height/80,
                                  ),
                                    
                   
                   
                      
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Student ID',
                            style: TextStyle(
                                                       
                                         fontSize: 16,
                                          color: Colors.black,
                                         //color: Color.fromARGB(235, 158, 157, 154),
                                         letterSpacing: 0.3,
                                         
                                         
                                         
                             ),
                            ),
                          ),
                        ),
                   
                   
                   
                   
                      ConstrainedBox(
                                  
                          constraints: BoxConstraints(
                          minHeight: size.height/35,
                           maxWidth: size.width/1.2,
                          ),
                   
                   
                                 
                   
                   
                   
                                 //id feild
                                  child: TextFormField(
                                                  
                                    controller: IdController,
                                    
                                       
                                       onChanged: (value) {
                                      /////////////////////////////
                                      setState(() {
                                        doValidationID();
                                      id=value;
                   
                                      });
                                      
                                    },
                                    
                                      
                                      
                                     keyboardType: TextInputType.number,
                                     
                                   
                                  
                                    decoration: InputDecoration(
                   
                                  
                                                  
                                      //display text
                                            labelText: 'Student ID',
                                            
                                            hintStyle: TextStyle(
                                              //text color
                                           color: HexColor("B0B0B0")
                                            ),
                                            
                                            
                                            border: OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(5.0),
                                              borderSide: BorderSide(
                                                color: HexColor("B0B0B0")
                                              )
                                            ),
                                  
                                            isDense: true,
                                  
                                  
                                            
                                  
                                      //error message
                                    errorText: idError.isNotEmpty ? idError : null,
                                       
                                       
                                        errorMaxLines: 1,
                                        errorStyle: const TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.5,    
                                       ),
                                            
                                         ),
                                       
                                       
                                  
                                  
                                    style: const TextStyle(
                                                  
                                    fontSize: 16,
                                     color: Colors.black,
                                    //color: Color.fromARGB(235, 158, 157, 154),
                                    letterSpacing: 0.3,
                                    
                     
                                    
                                  ),
                                  ),
                                  
                                       
                                ),
                   
                   
                   
                             
                   
                   
                   
                               //middle space in container
                                 SizedBox(
                                    height: size.height/80,
                                  ),
                                    
                   
                   
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Student Name',
                            style: TextStyle(
                                                       
                                         fontSize: 16,
                                          color: Colors.black,
                                         //color: Color.fromARGB(235, 158, 157, 154),
                                         letterSpacing: 0.3,
                                         
                                         
                                         
                             ),
                            ),
                          ),
                        ),
                   
                   
                   
                   
                                //////student name
                                ConstrainedBox(
                                  
                                  constraints: BoxConstraints(
                                      minHeight: size.height/35,
                                      maxWidth: size.width/1.2,
                                 ),
                                                  
                                 
                                  child: TextFormField(
                                                  
                                   controller: nameController,
                   
                                    onChanged: (value) {
                                     /////////////////////////////
                                      setState(() {
                                        doValidationName();
                                      name=value;
                   
                                      });
                                      
                                    },
                                    
                                      
                                     keyboardType: TextInputType.text,
                                     
                   
                                     decoration: InputDecoration(
                                  
                                                  
                                      //display text
                                            labelText: 'Student Name',
                            
                                            hintStyle: TextStyle(
                                              //text color
                                           color: HexColor("B0B0B0")
                                            ),
                                            
                                            
                                            border: OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(5.0),
                                              borderSide: BorderSide(
                                                color: HexColor("B0B0B0")
                                              )
                                            ),
                                  
                                            isDense: true,
                                  
                                  
                                            
                                  
                                        //error message
                                      errorText: nameError.isNotEmpty ? nameError : null,
                                       /*
                                        errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                             ? cardNumError
                                               : null,
                                       */
                                        errorMaxLines: 1,
                                        errorStyle: const TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.5,    
                                       ),
                                            
                                         ),
                                       
                                       
                                  
                                  
                                    style: const TextStyle(
                                                  
                                    fontSize: 16,
                                     color: Colors.black,
                                    //color: Color.fromARGB(235, 158, 157, 154),
                                    letterSpacing: 0.3,
                                    
                     
                                    
                                  ),
                                  ),
                                  
                                       
                                ),
                   
                   
                           
                   
                   
                   
                             //middle space in container
                                 SizedBox(
                                    height: size.height/80,
                                  ),
                                    
                   
                   
                   
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Email',
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
             

              controller: emailController,
                 
         onChanged: (value) {
          setState(() {
            // Update the student ID and trigger validation
            email= value;
            doValidationEmail();
          });
        },


              decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: HexColor("B0B0B0"),
                ),
              ),
                     


                    


              isDense: true,
             errorText: emailError.isNotEmpty ? emailError : null,
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

                  
                               
                   
                   
                                 //middle space in container
                                 SizedBox(
                                    height: size.height/80,
                                  ),
                                    
                   
                   
                   
                   
                                  
                   
                   
                   
                                   const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Faculty',
                            style: TextStyle(
                                                       
                                         fontSize: 16,
                                          color: Colors.black,
                                         //color: Color.fromARGB(235, 158, 157, 154),
                                         letterSpacing: 0.3,
                                         
                                         
                                         
                             ),
                            ),
                          ),
                        ),
                   
                   
                   
                   
                   
                   
                   
                   
                   
                          //event paticipated
                                ConstrainedBox(
                                  
                                  constraints: BoxConstraints(
                                      minHeight: size.height/35,
                                      maxWidth: size.width/1.2,
                                 ),
                                                  

                                 
                                  child: TextFormField(

                                                  
                                   controller: FacultyController,

                      onChanged: (value) {
          setState(() {
            // Update the student ID and trigger validation
            faculty = value;
            
          });
        },     

                                    
                                      
                                     //keyboardType: TextInputType.number,
                                     
                                  
                                     decoration: InputDecoration(
                                  
                                      
                                                  
                                      //display text
                                            labelText: 'Faculty',
                                       
                                            hintStyle: TextStyle(
                                              //text color
                                           color: HexColor("B0B0B0")
                                            ),
                                            
                                            
                                            border: OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(5.0),
                                              borderSide: BorderSide(
                                                color: HexColor("B0B0B0")
                                              )
                                            ),
                                  
                                            isDense: true,
                                  
                                  
                                            
                                  
                                        //error message
                                      // errorText: eventError.isNotEmpty ? eventError : null,
                                       /*
                                        errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                             ? cardNumError
                                               : null,
                                       */
                                        errorMaxLines: 1,
                                        errorStyle: const TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.5,    
                                       ),
                                            
                                         ),
                                       
                                       
                                  
                                  
                                    style: const TextStyle(
                                                  
                                    fontSize: 16,
                                     color: Colors.black,
                                    //color: Color.fromARGB(235, 158, 157, 154),
                                    letterSpacing: 0.3,
                                    
                     
                                    
                                  ),
                                  ),
                                  
                                       
                                ),
                   
                   
                   


                                
                                 //middle space in container
                                 SizedBox(
                                    height: size.height/80,
                                  ),
                   


                   
                   ///////////////////////////////////////
                   





                            //date 
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('User Name',
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
             

              controller: UserNAmeController,

                   
         onChanged: (value) {
          setState(() {
            // Update the student ID and trigger validation
            username = value;
            doValidationUserNAme();
          });
        },


              decoration: InputDecoration(
              hintText: 'User Name',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: HexColor("B0B0B0"),
                ),
              ),


              isDense: true,
            errorText: usernameError.isNotEmpty ? usernameError : null,
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
                                    height: size.height/80,
                                  ),
                   
                         
                   


                                     //date 
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Password',
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
                                    obscureText: true,
             

              controller: PasswordController,
                 
         onChanged: (value) {
          setState(() {
            // Update the student ID and trigger validation
            password= value;
           doValidationpassword();

          });
        },


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
  height: size.height/80,
 ),





                //date 
                        const Padding(
                          padding: EdgeInsets.all(14),
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
                   
                   
                   
                   SizedBox(
                    height: size.height/20,
                   ),
                   
                   
                                 ///buttton for submit
                      
                                 SizedBox(
                                   height: size.height/20,
                                   width: size.width/1.2,
                                 
                                                  
                                 
                                               child: ElevatedButton(
                                               style: ElevatedButton.styleFrom(
                                               backgroundColor: HexColor("#39B54A"),
                                              ),
                                                onPressed:() {


                                              //doValidation();
                                               doValidationID();
                                               doValidationName();
                                               doValidationEmail();
                                               doValidationUserNAme();
                                               doValidationpassword();
                                               doValidationconfirmpassword();

                                               doValidation();
                                             //  doValidationtime();
                                
                                        
                                        const TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.5,    
                                          );
                                           

                                           
                                             
                                            },
                                  
                                                  
                                              
                                                  
                                                  
                                                 child: const Text('Sign Up',
                                                 style: TextStyle(
                                                  fontSize: 17,
                                                  letterSpacing: 0.3,
                                  
                                                  
                                                ),
                                                   ),      
                                                  ),
                                                 ),
                              



    
                               //middle space in container
                                 SizedBox(
                                    height: size.height/35,
                                  ),









                                   
                  Center(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text("Already have an account?",
                          style: TextStyle(
                            fontSize: 14,
                          ),)),
                    
                        GestureDetector(
                        
                        
                                      onTap: () {
                                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const signin(inputText: ''),
                            ),
                          );
                                      }
                                      
                                      
                                      ,
                                      child: Text(
                                        '  Sign In',
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
              ),

          
                   
             ],
        
          ),
        ),
      ) ,

    );
  }




/*
  
void doValidation() {
   
    String id = IdController.text.trim();
    String name = nameController.text.trim();
    

    //String userAmount = IdController.text.trim();
    
    if(id.isNotEmpty && name.isNotEmpty && reason.isNotEmpty && event.isNotEmpty )
{
       /*
                          Navigator.push(context,
                         
                         ///navigation
                         
                         MaterialPageRoute(builder: (context) =>  const SuccesfulRequestPage(inputText: '',),
                        ),);
                                               
                 */                          
}
     
}
*/

void doValidationID() {
  String id = IdController.text.trim();
      
            if(id.isNotEmpty){
            setState(() {
                 idError='';
            });

    } else if(id.isEmpty){
            setState(() {
                 idError='Please enter your ID';
            });

    }
    
  }

  

  void doValidationName() {
  String name = nameController.text.trim();
      
            if(name.isNotEmpty){
            setState(() {
                 nameError='';
            });

    } else if(name.isEmpty){
            setState(() {
                 nameError='Please enter your Name';
            });

    }
    
  }




void doValidationUserNAme() {
  String username = UserNAmeController.text.trim();
      
            if(username.isNotEmpty){
            setState(() {
                 usernameError='';
            });

    } else if(username.isEmpty){
            setState(() {
                 usernameError='Please enter a User Name';
            });

    }
    
  }





  void doValidatiopassword() {
 String password = PasswordController.text.trim();
      
            if(password.isNotEmpty){
            setState(() {
                 passwordError='';
            });

    } else if(password.isEmpty){
            setState(() {
                 passwordError='Please enter a password';
            });

    }
    
  }


  


  void doValidationpassword() {
 String password = PasswordController.text.trim();
      
            if(password.isNotEmpty){
            setState(() {
                 passwordError='';
            });

    } else if(password.isEmpty){
            setState(() {
                 passwordError='Please enter a password';
            });

    }
    
  }



  void doValidationconfirmpassword() {
 String confirmpass = ConfirmPasswordController.text.trim();
 String password = PasswordController.text.trim();
      
             
             if(confirmpass!=password){
                setState(() {
                 confirmpasswordError='Password does not match';
            });
             }



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







  void doValidationEmail(){
    String email = emailController.text.trim();
    
if (isEmailValid(email)) {
 setState(() {
   emailError='';
 });

} else {
 setState(() {
   emailError='Email is invalid!';
 });
}

  }


  bool isEmailValid(String email) {
  return EmailValidator.validate(email);
}



void doValidation(){
  if(id.isNotEmpty && name.isNotEmpty && email.isNotEmpty && username.isNotEmpty && password.isNotEmpty && confirmpass.isNotEmpty && password==confirmpass){
    setState(() {
        Navigator.push(context,
                         
                         ///navigation
                         
                         MaterialPageRoute(builder: (context) =>  const SuccessSignUpPage(inputText: '',),
                        ),);
                                 

    });
  }
}
}
/*
bool isEmailValid(String email) {
  // Regular expression for a valid email
  RegExp regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  return regex.hasMatch(email);
}




  

  void doValidationtime() {
 
      
            if(time.isNotEmpty){
            setState(() {
                 timeError='';
            });

    } else if(date.isEmpty){
            setState(() {
                 timeError='Please select the Time';
            });

    }
    
  }


*/


