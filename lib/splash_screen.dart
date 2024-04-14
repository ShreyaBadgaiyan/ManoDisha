// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Text('Welcome to the application',
//           style: TextStyle(
//             color: Colors.blue,
//             fontSize: 34,
//           ),),
//       ),
//     );
//   }
// }
import 'package:emotion_tracker/openingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(

            'assets/images/bg8.jpg', // Path to your background image
            fit: BoxFit.cover,
          ),
          Center(
            child:Image.asset(
                height: 150,
                width: 150,
                'assets/images/mainLogo.png'),
            ),

        ],
      ),
    );
  }
}
