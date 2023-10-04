import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_connect/community_pages/community_page.dart';

class CommunityCsr extends StatefulWidget {
  const CommunityCsr({Key? key}) : super(key: key);

  @override
  State<CommunityCsr> createState() => _CommunityCsrState();
}

int notificationCount = 5;

class _CommunityCsrState extends State<CommunityCsr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/images/propic.png',
                ),
              ),
            ),
            const Spacer(),
            const SizedBox(width: 8),
            Text(
              'Haritha Saviya',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF18A689),
              ),
            ),
            const Spacer(),
            const SizedBox(width: 8),
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications_rounded),
                  color: const Color(0xFF18A689),
                  onPressed: () {
                    // Handle the right icon's onPressed event here
                  },
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '$notificationCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 392.5,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/csr.png', // Replace with the path to your cover image asset
                            height: 230,
                            width: 392.5,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ), //SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 432,
                  width: 392.5,

                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  // borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Haritha Saviya',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' We are excited to inform you about our upcoming Corporate Social Responsibility (CSR) project called "Haritha Saviya." This initiative aims to support O/L students from rural villages in the Ampara district by organizing a seminar and providing them with essential stationery suppliesWe are reaching out to you, our esteemed university students, for your valuable support. We kindly request your sponsorship or financial contribution towards this project. Your generosity will play a significant role in empowering these students and enhancing their educational opportunities.Project Name: “Haritha Saviya”Objective: Supporting O/L students from rural villages in Ampara through a seminar and stationery supplies.Date: 13/10/2023Location: Uksiripura vidyalaya.Your sponsorship or donation will contribute to the success of this project and will be recognized during the seminar and in our project reports.',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CommunityPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff18A689),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: const Size(
                            150,
                            40,
                          ),
                        ),
                        child: const Text(
                          'Donate',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//
