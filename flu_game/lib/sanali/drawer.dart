import 'package:flutter/material.dart';
import 'package:unityworld_correct/Pages/Profile/user_profile.dart';
import 'package:unityworld_correct/Pages/SettingPage/about_us_page.dart';
import 'package:unityworld_correct/Pages/SettingPage/help_center.dart';
import 'package:unityworld_correct/Pages/SettingPage/privacy_policy.dart';
import 'package:unityworld_correct/Pages/SettingPage/settings_page.dart';


import 'package:unityworld_correct/components/nav_bar.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required Container child 
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      
      child: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [

            SingleChildScrollView(
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(15, 26, 88, 1.0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
            
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/logo1.png',
                      width: size.width * 0.4,
                      height: size.height * 0.12,
                    ),
            
                    const Text(
                      "Sanali Losathi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(
                    Icons.person_pin_rounded,
                  ),
                  title: const Text(
                    "My Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserProfile()
                        ),
                    );
                  },
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(
                    Icons.people_alt_outlined,
                  ),
                  title: const Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUs()
                        ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(
                    Icons.privacy_tip_outlined,
                  ),
                  title: const Text(
                    "Privacy & Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy()
                        ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(
                    Icons.settings,
                  ),
                  title: const Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingPage()
                        )
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: const Icon(
                    Icons.help_outline_outlined,
                  ),
                  title: const Text(
                    "Help Center",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpCenter()
                        )
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(80, 50, 30, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(15, 26, 88, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()
                      )
                  );
                },
      
                child: const ListTile(
                  iconColor: Colors.white,
      
                  leading: Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  title: Text(
                    "Back to Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  
}