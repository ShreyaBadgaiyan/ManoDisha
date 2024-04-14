import 'package:flutter/material.dart';

import 'openingScreen.dart';


class ThankingPage extends StatefulWidget {
  const ThankingPage({super.key});

  @override
  State<ThankingPage> createState() => _ThankingPageState();
}

class _ThankingPageState extends State<ThankingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC9D8EF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Thanks!',
              style: TextStyle(
                fontFamily:'Times New Roman',
                fontSize: 40
              ),),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const OpeningScreen();
                        },
                      ),
                    );
                  },
                  child: const Text('Lets Explore more',
                  style: TextStyle(
                    color: Colors.black
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
