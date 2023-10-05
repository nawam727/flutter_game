  import 'package:flutter/material.dart';
import 'package:unityworld_correct/Pages/HomePage/home_page.dart';
import 'package:unityworld_correct/components/back_notifi_account.dart';
import 'package:unityworld_correct/components/drawer.dart';



class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}
class _AboutUsState extends State<AboutUs> {
  @override
   Widget build(BuildContext context) {
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
              "About Us",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 144, 255),
                fontSize: 32, 
                fontWeight: FontWeight.bold),
            ),
            ),


const SizedBox(height: 20.0),

          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 30,),
              child: const Text(
                "Our Mission",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),

const SizedBox(
  height: 10.0),
  Container(
    margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 50,),
    width: 250.0,
    height: 200.0,
  
    decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(30.0),
    color: Color.fromARGB(255, 129, 193, 255),),
    padding: EdgeInsets.all(40),
    child: const Text("To decide our strength in the present and up and coming programming innovations by conveying modern arrangements that keep them serving and remaining for more.",
    textAlign:  TextAlign.center,
    ),
      ),




const SizedBox(height: 15.0),

          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 30,),
              child: const Text(
                "Our Vision",
                textAlign: TextAlign.center,


                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),



 const SizedBox(
  height: 10.0),
  Container(
    margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 50,),
    width: 250.0,
    height: 200.0,
   
   
    decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(30.0),
    color: Color.fromARGB(255, 129, 193, 255),),
    padding: EdgeInsets.all(40),
    child: const Text("To acquire profound respect from the supporters over the globe and distinctive verticals of the business by conveying intriguing yet answers for their issues/challenges.",
    textAlign:  TextAlign.center,
    ),
  ),


 const SizedBox(
  height: 10.0),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Faculty Of Computing",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 82, 81, 81),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),



          
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Faculty of Computing (FOC) provides world-class education and training in Computing and Information Technology, both at the undergraduate as well as postgraduate levels.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
          ),



          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "FOC offers University Grants Commission’s approved degree programmes in multiple disciplines. It has also partnered with the world top ranking universities, University of Plymouth in UK and Victoria University in Australia, to provide undergraduates with highly recognized International Degrees. The innovative teaching methods, along with the latest state-of-the-art equipment, form the perfect blend that motivates our students to do their best and reach their goals with ease.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
          ),



          
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "The Faculty provides top-notch research, training and development services that will help students acquire new knowledge along with the best practices in their respective disciplines. The FOC aims to be among the foremost centre of excellence in Research and Development (R&D) and advance education in computing while taking into consideration national as well as regional requirements for Information and Communication Technology.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
            ),
          




           Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "The FOC places equal emphasis on both theory and practice of all aspects of the computing field, enabling our students to have sufficient hands-on experience to take up any working assignment in their respective IT fields at the end of their degree programmes. So, look no further for that perfect computing degree; NSBM’s Faculty of Computing is the ideal choice!",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
            ),



            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Dean's Message",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 26, 88),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            



             Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, left: 60,),
              child:Image.asset(
                  'assets/images/dean.jpg',
                  width: 200,
                  height: 200,
                ),
             ),



 const SizedBox(height: 5.0),

             Container(
              margin: const EdgeInsets.only(top: 3, bottom: 0),
              padding: const EdgeInsets.all(30),
              child: const Text(
                "Welcome to the Faculty of Computing of NSBM Green University. NSBM is a dynamic young organization offering innovative educational products to cater to the needs of the fast-developing business and industrial economies in the world.\n"

                 "Your course of study will be up-to-date and relevant and will be delivered by well-qualified staff geared to prepare you for employment.\nThe NSBM Graduate profile and student charter aim to develop the students to achieve what they expect in their chosen career paths. As students of NSBM, you are expected to work hard and set high standards.\n" 
                 
                 "To help you achieve success, you are provided with excellent staff as well as student support services to help deal with your needs. Our academic (both local and foreign), administrative and technical staff with which you work will be ready to advise and facilitate you.\n" 
                 
                 "It is your responsibility to take your course of studies very seriously and make full use of the diverse range of learning opportunities provided to you, managing your time effectively in class and in self-directed assignments. With the staunch belief in creating reliable and holistic individuals, our wish is to see you become successful in life and be a good ambassador for the university.",
               
               
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal
                    ),
              ),
            ),




            
              Container(
              margin: const EdgeInsets.only(top: 3, bottom: 5),
              child: const Text(
                "Dr. Rasika Ranaweera",

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),




 const SizedBox(height: 1.0),


              Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              child: const Text(
                "Dean – Faculty of Computing",

                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),




 const SizedBox(
  height: 10.0),
            Container(
                   margin: const EdgeInsets.only(top: 2, bottom: 5, right: 50, left: 100),
                   width: 150.0,
                   height: 100.0,



    decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(20.0),
    color: Color.fromARGB(255, 129, 193, 255),),
    padding: EdgeInsets.all(15),
    child: const Text("Faculty of Computing, NSBM Green University, Mahenwaththa,\n"
                "Pitipana,\n"                 
                "Homagama,\n"                           
              "Sri Lanka.\n",
    textAlign:  TextAlign.center,
    style: TextStyle(
      fontSize: 10,
      color:  Colors.white,
      fontWeight: FontWeight.bold
    ),
    ),
), 
  





































          ],
        ),
      )
 );
   }                    
}





























































































































































































          



















