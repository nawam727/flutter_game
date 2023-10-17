import 'package:flutter/material.dart';
import 'package:new_welcome_flutter/Pages/continue_page.dart';
import 'package:new_welcome_flutter/components/background.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
          children: [
            Background(),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              Expanded(
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 250,
                            width: 250,
                          ),
                        ),
                      )
                    ],
                  ),
              ),
              
              const Expanded(
                child: Center (
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text("WELCOME",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(15, 26, 88, 1.0),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                    ),
                  )
                )
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 60),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(
                        builder: (context) => ContinuePage()
                        )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,     
                    ),
                  )
                  ),
                ), 
              )
          
            ]
          ),

          ]
        ),
    );
  }
}