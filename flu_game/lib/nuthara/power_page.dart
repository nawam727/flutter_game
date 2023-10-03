import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mad_project/components/back_dots.dart';
import 'package:mad_project/components/settings_tile.dart';
import 'package:mad_project/pages/location_settings.dart';
import 'package:mad_project/pages/navbar_pages/profile_page.dart';
import 'package:mad_project/pages/notification_settings.dart';
import 'package:mad_project/pages/terms_conditions.dart';

import '../main.dart';
import 'auth_pade.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //Fetching data from firestore
  String profilePhotoURL = '';
  UserData? userData;

  @override
  void initState() {
    super.initState();
    getUserData();
    displayProfile();
  }

  Future<void> displayProfile() async {
    print("Profile Photo URL: $profilePhotoURL");
    UserData? userData = await getUserDetails();
    if (userData != null) {
      String photoURL = userData.photoURL;
      setState(() {
        profilePhotoURL = photoURL;
      });
    }
  }

  Future<void> getUserData() async {
    UserData? userDetails = await getUserDetails();
    setState(() {
      userData = userDetails;
    });
  }

  //sign out method
  void signUserOut(BuildContext context) async {
    // await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              AuthPage()),
    );
  }

  //Alert box
  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Do you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(false);
              },
              child: Text(
                'No',
                style: TextStyle(
                  color: HexColor("#00B251"),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                signUserOut(context);
              },
              child: Text(
                'Yes',
                style: TextStyle(
                  color: HexColor("#00B251"),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(
        title: "Settings",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: HexColor("00B251"),
                              width: 2.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: profilePhotoURL.isNotEmpty
                                ? NetworkImage(profilePhotoURL) as ImageProvider
                                : null,
                          ),
                        ),
                        if (profilePhotoURL.isEmpty)
                          CircularProgressIndicator(
                            color: HexColor("00B251"),
                          ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userData != null ? userData!.name : "User Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          userData != null
                              ? userData!.sEmail
                              : 'user@example.com',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              //account
              SettingsTile(
                color: const Color.fromARGB(255, 214, 247, 221),
                icon: Ionicons.person_outline,
                title: "Account",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),

              //notification
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationSettings()),
                  );
                },
                child: SettingsTile(
                  color: const Color.fromARGB(255, 214, 247, 221),
                  icon: Ionicons.notifications_outline,
                  title: "Notification",
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //location
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationSettings()),
                  );
                },
                child: SettingsTile(
                  color: const Color.fromARGB(255, 214, 247, 221),
                  icon: Ionicons.location_outline,
                  title: "Location",
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //terms and conditions
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TermsConditions()),
                  );
                },
                child: SettingsTile(
                  color: const Color.fromARGB(255, 214, 247, 221),
                  icon: Ionicons.document_outline,
                  title: "Terms and Conditions",
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //software update
              SettingsTile(
                color: const Color.fromARGB(255, 214, 247, 221),
                icon: Ionicons.arrow_up_outline,
                title: "Software Update",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),

              //logout
              GestureDetector(
                onTap: () {
                  showAlert(context);
                },
                child: SettingsTile(
                  color: const Color.fromARGB(255, 214, 247, 221),
                  icon: Ionicons.log_out_outline,
                  title: "Logout",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
