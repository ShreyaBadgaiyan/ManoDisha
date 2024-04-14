import 'package:emotion_tracker/chatBot.dart';
import 'package:emotion_tracker/consts/consts.dart';
import 'package:emotion_tracker/main.dart';
import 'package:emotion_tracker/screens/chat_screen.dart';
import 'package:emotion_tracker/views/home_view/home.dart';
import 'package:emotion_tracker/views/home_view/home_view.dart';
import 'package:emotion_tracker/views/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});
  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white,
        //  image: DecorationImage(
        //      image: AssetImage("images/background.jpg",fit: BoxFit.cover)
        //  ),

        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'assets/images/bg8.jpg', // Replace 'images/background.jpg' with your image file path
              fit: BoxFit.cover,
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top:40),
                  child: Column(

                    children:[
                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return const MyHomePage(title: 'Mood Tracker');
                          //     },
                          //   ),
                          // );
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage(title: 'Mood Tracker')));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 230,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1.0, // Border width
                            ),
                            color: Color(0xFFC9D8EF),
                            borderRadius: BorderRadius.circular(15),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0,3),
                              ),
                            ],
                          ),
                          // decoration: BoxDecoration(
                          //
                          //   borderRadius: BorderRadius.circular(15),
                          //   image: DecorationImage(
                          //     image: AssetImage('images/background1.jpg'), // Add your background image path
                          //     fit: BoxFit.cover,
                          //

                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/mood.png",
                                    height: 150,
                                    width: 400,
                                  ),
                                ),

                                Text(
                                  "Mood Tracker",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),

                                SizedBox(height: 1,
                                ),
                                Text(
                                  "Analyse Yourself Here!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),

                                ),
                                SizedBox(height: 1),


                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //       return ChatBot();
                          //     },
                          //   ),
                          //);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatBot()));

                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 230,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1.0, // Border width
                            ),
                            color: Color(0xFFC9D8EF),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0,3),
                              ),
                            ],
                          ),

                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(15),
                          //   image: DecorationImage(
                          //     image: AssetImage('images/background1.jpg'), // Add your background image path
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/mental.png",
                                    height: 150,
                                    width: 400,
                                  ),
                                ),

                                Text(
                                  "MediCare Chat",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),

                                SizedBox(height: 1,
                                ),
                                Text(
                                  "Hey,Talk To Us!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),

                                ),
                                SizedBox(height: 1),


                              ],
                            ),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //       return  GetMaterialApp(
                          //         theme: ThemeData(fontFamily: AppFonts.nunito),
                          //         debugShowCheckedModeBanner: false,
                          //         home: const LoginView(),
                          //       );
                          //     },
                          //   ),
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginView()));


                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: 230,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, // Border color
                              width: 1.0, // Border width
                            ),
                            color: Color(0xFFC9D8EF),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0,3),
                              ),
                            ],
                          ),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(15),
                          //   image: DecorationImage(
                          //     image: AssetImage('images/background1.jpg'), // Add your background image path
                          //     fit: BoxFit.cover,
                          //    // borderRadius: BorderRadius.circular(15),
                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/experts.png",
                                    height: 150,
                                    width: 400,
                                  ),
                                ),

                                Text(
                                  "Connect With Expert",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),

                                SizedBox(height: 1,
                                ),
                                Text(
                                  "Need Some Help?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),

                                ),
                                SizedBox(height: 1),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
