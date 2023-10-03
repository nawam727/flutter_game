import 'package:flutter/material.dart';
import 'package:mad_project/components/back_dots.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  String selectedSection = 'Highlights';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(
        title: "Privacy Policy",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        //what is privacy policy
        child: Column(
          children: [
            const Text(
              "What is the Privacy Policy and what does it cover?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            //last update
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: const Text(
                  "Last updated: June 15, 2023",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 101, 101),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),


            //welcome to nsbm
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Welcome to the NSBM N-Side app. We are committed to protecting your privacy and providing a secure and seamless experience. This Privacy Policy outlines how we collect, use, disclose, and protect your personal information. By using the App, you consent to the practices described in this policy.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),


            //information we collect 
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: const Text(
                  "1. Information We Collect",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 9,
            ),
            //privacy image 1
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/privacy1.jpg', // image
                width: 400,
                height: 200,
                fit: BoxFit.cover, 
              ),
            ),
          ),


            //we collect the
            Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "We collect the following types of information when you use our App:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),


            //peronal information
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Personal Information: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'During account registration, we collect your name, email address, student ID, and other relevant information.',
                ),
              ],
            ),
            ),


            //usage data
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Usage Data: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We gather data on how you interact with the App, including your actions within the app, navigation paths, and usage patterns. This information helps us enhance the user experience and optimize our services.',
                ),
              ],
            ),
            ),
            const SizedBox(height: 10), 



            //how we use information
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "2. How We Use Your Information",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),

            SizedBox(
              height: 9,
            ),
            //privacy image 2
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/privacy2.jpg', // image
                width: 400,
                height: 200,
                fit: BoxFit.cover, 
              ),
            ),
          ),


            //we collect following type of data
            Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "We use the collected information for the following purposes:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),


            //account management
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Account Management: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We use your personal information to create and manage your account, allowing you to access personalized features.',
                ),
              ],
            ),
            ),


            //timetable and lecture info
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Timetable and Lecture Information:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We display daily timetables, lecture hall details, real-time availability updates, and directions based on your personalized schedule.',
                ),
              ],
            ),
            ),


            //communication
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Communication:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We send notifications, updates, and important information related to your academic schedule, events, and announcements.',
                ),
              ],
            ),
            ),


            //improvement of service
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Improvement of Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'Usage data helps us analyze user behavior and preferences, enabling us to improve the Apps functionality, content, and features.',
                ),
              ],
            ),
            ),
            const SizedBox(height: 9), 



            //info sharing
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "3. Information Sharing",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),
            const SizedBox(height: 8), 


            //privacy image 3
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/privacy3.jpg', // image
                width: 400,
                height: 200,
                fit: BoxFit.cover, 
              ),
            ),
          ),

          const SizedBox(height: 8), 


            //we do not share
            Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "We do not share your personal information with third parties except in the following circumstances:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),


            //service provider
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Service Providers: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We engage trusted third-party service providers to assist us in delivering our services. These providers are bound by confidentiality and are prohibited from using your information for any other purpose.',
                ),
              ],
            ),
            ),


            //legal requirements
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Legal Requirements:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'We may share your information to comply with legal obligations, protect our rights, or respond to government requests.',
                ),
              ],
            ),
            ),
            const SizedBox(height: 10), 


            //data security
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "3. Data Security",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),
            Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "We take the security of your personal information seriously. We employ industry-standard technical and organizational measures to safeguard your data from unauthorized access, loss, or disclosure.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            const SizedBox(height: 10), 


            //your rights
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "4. Your Rights",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),


            //you have right to
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "You have the right to:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            ),

            //access correct data
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Access and Correct Data: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'You can access and update your personal information through your account settings within the App.',
                ),
              ],
            ),
            ),


            //data portability
            const SizedBox(height: 8),
            RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(
                  text: 'Data Portability:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      'Upon request, we will provide you with a copy of your data in a structured, machine-readable format.',
                ),
              ],
            ),
            ),
            const SizedBox(height: 10), 


            //change to privacy
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "5. Changes to Privacy Policy",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),

            
            //we may update
            Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            child: const Text(
              "We may update this Privacy Policy to reflect changes in our practices. We will notify you of any significant changes through the App.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            const SizedBox(height: 10), 
            ],
          ),
      ),
    );
  }
}




