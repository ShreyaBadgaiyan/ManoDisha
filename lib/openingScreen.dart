import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:manodisha/views/login_view/login_view.dart';
import 'package:manodisha/widgets/openScreenFeatures.dart';

import 'chatBot.dart';
import 'main.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});
  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/bg8.jpg', // Replace 'images/background.jpg' with your image file path
              fit: BoxFit.cover,
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  MyHomePage(title: 'Mood Tracker')));
                        },
                        child: OpenScreenFeatures(
                          image: 'assets/images/mood.png',
                          headText: 'Mood Tracker',
                          descText: 'Analyse Yourself Here!',
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatBot()));
                        },
                        child: OpenScreenFeatures(
                          image: 'assets/images/mental.png',
                          headText: 'MediCare Chat',
                          descText: 'Hey,Talk To Us',
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginView()));
                        },
                        child: OpenScreenFeatures(
                          image: 'assets/images/experts.png',
                          headText: 'Connect With Expert',
                          descText: 'Need Some Help?',
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
    );
  }
}
