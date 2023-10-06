
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:unityworld_correct/Pages/HomePage/home_page.dart';
import 'package:unityworld_correct/components/back_notifi_account.dart';



import '../../components/drawer.dart';

class HelpCenter extends StatefulWidget {
  
  HelpCenter({Key? key}) : super(key: key);


  @override
  State<HelpCenter> createState() => _HelpCenterState();
}


class _HelpCenterState extends State<HelpCenter> {
 


void showAlert(){
  QuickAlert.show(
    context: context, 
    type: QuickAlertType.success
  );
}

  @override
   Widget build(BuildContext context) {

  final toController = TextEditingController();
  final fromController = TextEditingController();
  final subController = TextEditingController();
  final desController = TextEditingController();
    
    return Scaffold(
      appBar: BackAppBar(
        IconButton(

              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage()
                  )
                );
              }, 

              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,

              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              color: Colors.black,

            ),
      ),
       drawer: MyDrawer(
        child: Container(),
      ),


      

       body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Help Center",

                style: TextStyle(
                    color: Color.fromARGB(255, 30, 144, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),

      
 Container(
              margin: const EdgeInsets.only(
                top: 10.0, 
                bottom: 10.0,
              ),

              width: MediaQuery.of(context).size.width,
              height: 620.0,

              decoration: const BoxDecoration(
                  color:Color.fromARGB(255,217,217,217),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
              ),








              child: Column(
                children: <Widget>[

            
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.only(
                top: 2,
                bottom: 5,
                right: 15,
                left: 15,
              ),


              child: Column(
                children: [
                  Center(
                    child: Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),





  SizedBox(height: 10.0),
                  Text(
                    "To :- ",
                  
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18,

                      ),
                  ),


                  SizedBox(height: 15.0),
                  
                  TextFormField(
                    controller: toController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'codewizard@nsbm.gmail.com.',
                      
                    ),
                  ),
                ],
              ),
            ),


   const SizedBox(height: 10.0),

            Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 15,
                left: 15,
              ),

              child: Column(
                children: [
                  SizedBox(height: 5.0),
                  Text(
                    "From :- ",
          
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18,

                      ),
                  ),





   SizedBox(height: 15.0),
                  TextFormField(
                    controller: fromController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                  ),
                ],
              ),
            ),





            
            
            
            const SizedBox(height: 10.0),

            Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                right: 15,
                left: 15,
              ),
              child: Column(
                children: [
                  SizedBox(height: 5.0),
                  Text(
                    "Subject :- ",
                   
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18,
                      
                      ),
                  ),







                  SizedBox(height: 15.0),

                  TextFormField(
                    controller: subController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the subject here',
                    ),
                  ),
                ],
              ),
            ),








            const SizedBox(height: 10.0),


            Container(
              margin: const EdgeInsets.only(
                top: 5,
                bottom: 2,
                right: 15,
                left: 15,
              ),



              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  Text(
                    "Please provide a brief description :- ",
                    textAlign: 
                    TextAlign.center,
                    style: 
                    TextStyle(
                      color: Colors.black, 
                      fontSize: 18
                      
                      ),
                  ),


                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: desController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a description here',
                    ),
                    maxLines: 5,
                    minLines: 1,
                  ),
                ],
              ),
            ),


 const SizedBox(height: 30.0),
            Center(
              child: MaterialButton(
                  padding: const EdgeInsets.all(8),
                  height: 56,
                  minWidth: 155,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),


                  color: const Color.fromARGB(255, 15, 26, 88),
                  textColor: 
                  Colors.white,
                  child: 
                  const Text("Send",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  ),
                  ),


                     
                  onPressed: () {
                 
                    

                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: AlertDialog(
                              title: const Center(
                                child: Text("Successful",style: TextStyle(
                                    color: Color.fromARGB(255, 30, 144, 255),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),),
                              ),



                              backgroundColor:
                                   Colors.white,
                              titleTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },




                                  child: const Center(
                                    child: Text("Done"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        );
                  }
                  ),
            )
                ],
 ),
        
        ),
          ]
        ),
      ),
    );
  }
}









  
          


  
  
        
    
  


  











































































  























































































  