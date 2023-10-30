import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardPaymentPage extends StatefulWidget{
  const CardPaymentPage({super.key});

  @override
  State<CardPaymentPage> createState() => _CardPaymentPageState();
}


class _CardPaymentPageState extends State<CardPaymentPage> {
          
          //text editing controller for textbox
  //final myController = TextEditingController();
  TextEditingController myController = TextEditingController();

  // Default selected value of radio button
  int selectedValue = 1; 

  @override
  Widget build(BuildContext context)
  {

    Size size=MediaQuery.of(context).size;

     return Scaffold(

      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: SingleChildScrollView(

        // ignore: sized_box_for_whitespace
        child: Container(

          width: double.infinity,
          height: size.height,

          child: Center(
            child: Column(
            
              //mainAxisAlignment: MainAxisAlignment.center,
               
             children: [
            
              Expanded(
                flex:2,
            
                child: Column(
            
                  children: <Widget>[
            
                  

                  //space between top and image
                   SizedBox(
                         height: size.height/15,
                    ),
            
            
            
            
               //image
               Center(
                 child: Image.asset("assets/Workout.png",
                     
                      height: size.height/2.308,
                      width: size.width/1.1,
                      
                      ),
               ), 
           
               
               ],
                  
                )
                ),
            
            
            
            
            
            
            
            
                Expanded(
            
                  flex: 2,
            
                  child:Column(
                      
                    children: [
                      
                      
                      //space in top of the container
                      SizedBox(
                        height: size.height/45,
                      ),
                      
                      
                      
                      //space in image and container
                       SizedBox(
                        height: size.height/420,
                        width: size.width/3,
                       ),
                  
                             
                      
                      
                      
                      
                      
                      //large container
                      Container(
                      
                           height: size.height/2.3,
                           width: size.width/1.15,
                      
                      //border
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                        color: const Color.fromARGB(64, 0, 0, 0),
                      
                    
                      
                      )
                       ),
                      
                      

                    
                         //large container contents
                        child: Column(
                          children: [
                      
                      
                              //space in top of the contaier
                              SizedBox(
                                height: size.height/28,
                              ),
                                 
                      
                              /*   
                      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            //second container for visa and master radio buttons
                            SizedBox
                            (
                      
                              height: size.height/23,
                              width: size.width/1.25,
                      
                      
                      
                      
                              child: Row(
                               // crossAxisAlignment: CrossAxisAlignment.center,
                               // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                      

                      
                                 //visa button
                               Center(
                                 child: RadioListTile(
                                                   
                                  // contentPadding: EdgeInsets.zero,
                                                   
                                    // Adjust vertical padding
                                    //contentPadding:  EdgeInsets.symmetric(horizontal: size.width/18,  vertical: size.height/10), 
                                   
                                    // Reduce space between content
                                    dense: true, 
                                   
                                    // Align Radio button to the left
                                    controlAffinity: ListTileControlAffinity.leading, 
                                                   
                                   activeColor:HexColor("#39B54A"),//color when pressed
                                                   
                                 title: Text('Visa',
                                 style:TextStyle(
                                                              
                                    fontSize: 17,
                                    color: HexColor("#39B54A"),
                                    letterSpacing: 0.3,
                                                              
                                 )
                                                                
                                 ),
                                  value: 1,
                                  groupValue: selectedValue,
                                                
                                    //color of the button
                                  fillColor: MaterialStateColor.resolveWith((states) => HexColor("#39B54A")),
                                  onChanged: (value1) => _handleRadioValueChange(value1),
                                 ),
                               ), 
                                  
                      
                      
                      
                                      //space between 2 radio buttons
                                      SizedBox(
                                        width: size.width/45,
                                      ),
                      
                      
                      
                      
                         
                                     //master button
                                 Center(
                                   child: Container(
                                                       
                                   height: size.height/23,
                                   width: size.width/1.25/2.058,
                                                       
                                    decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    color: HexColor("#39B54A")
                                     )
                                      ),
                                                                          
                                                       
                                                       
                                    child: RadioListTile(
                                      //contentPadding: EdgeInsets.zero,
                                                       
                                        // Adjust horizontal padding
                                     // contentPadding: const EdgeInsets.symmetric(horizontal:0.2), 
                                     
                                      // Reduce space between content
                                      dense: true, 
                                      // Align Radio button to the left
                                      controlAffinity: ListTileControlAffinity.leading, 
                                                       
                                                       
                                      activeColor:HexColor("#39B54A"),//color when pressed

                                    title: Text('Master',
                                    style:TextStyle(
                                                                    
                                          fontSize: 17,
                                          color: HexColor("#39B54A"),
                                          letterSpacing: 0.1,
                                                                    
                                       )
                                       ),
                                    value: 2,
                                    groupValue: selectedValue,
                                        
                                        //color of the button
                                    fillColor: MaterialStateColor.resolveWith((states) => HexColor("#39B54A")),
                                    onChanged: (value1) => _handleRadioValueChange(value1),
                                        
                                         ),
                                                                 
                                     ),
                                 ), 
                    
                                ],
                              ),
                      
                      
                            ),
                      
                      */
                      
                      
                             //middle space in container
                             SizedBox(
                                height: size.height/40,
                              ),
                      ///////////////////////
                      
                      
                      
                      
                              //card number container
                            SizedBox(
                      
                              height: size.height/20,
                              width: size.width/1.25,
                      /*
                              decoration:BoxDecoration(
                             // borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.black26
                              )
                              ),
                      */
                              child: Padding(
                      
                      
                                padding: const EdgeInsets.only(top:1.0, bottom: 1),
                               
                                child: TextField(

                                  //maxLines: 1,
                                   controller: myController,

                                   keyboardType: TextInputType.number,
                                

                                   decoration: const InputDecoration(
                                    //display text
                                          hintText:"Card Number", 
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.black26,
                                            )
                                          ),
                                          
                                  ),
                                 
                                style: const TextStyle(
                              
                                  fontSize: 17,
                                  color: Color.fromARGB(235, 158, 157, 154),
                                  letterSpacing: 0.3,
                                  
                                ),),
                              ),
                             
                            ),
                          
                      
                                 //middle space in container
                             SizedBox(
                                height: size.height/40,
                              ),
                      
                      
                      

                            //date of expire container
                            SizedBox(
                      
                              height: size.height/20,
                              width: size.width/1.25,
                     
                              child: TextField(
                      
                                controller: myController,

                                 keyboardType: TextInputType.number,
                              
                                decoration: const InputDecoration(
                      
                                  //display text
                                        hintText:"Date of Expire", 
                                        border: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Colors.black26,
                                          )
                                        ),
                                        
                                ),
                               
                              style: const TextStyle(
                      
                                fontSize: 16,
                                color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                                
                                
                              ),),
                             
                            ),
                          
                      
                      
                          
                              //middle space in container
                             SizedBox(
                                height: size.height/40,
                              ),
                      
                      
                      
                      
                      
                      
                            //cvc container
                             SizedBox(
                      
                              height: size.height/20,
                              width: size.width/1.25,
                     

                              child: TextField(
                                                      
                                controller: myController,
                                 keyboardType: TextInputType.number,
                              
                                decoration: const InputDecoration(
                                                      
                                  //display text
                                        hintText:"CVC", 
                                        border: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Colors.black26,
                                          )
                                        ),
                                        
                                ),
                               
                              style: const TextStyle(
                                                      
                                fontSize: 16,
                                color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                                
                              ),
                              ),
   
                            ),
                          
                      
                      
                          //space between text and the button
                          SizedBox(
                            width: size.width/1.3,
                           height: size.height/25,
                          ),
                      
                      
                      
                      
                             //confirm payment button
                             SizedBox(
                  width: size.width/1.25,
                  height: size.height/21,
                             
                      
                             
                   child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   backgroundColor: HexColor("#39B54A"),
                  ),
                    onPressed:() {
                      
                    },
                      
                      
                     child: const Text('Confirm Payment',
                     style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.5,

                      
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
             ],
            ),
          ),
        ),
      ),
   );
     
  }




  
}






