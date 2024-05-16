// import 'dart:html';
// import 'dart:html';
// import 'dart:html';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
//
// import 'addEmotion.dart';
// import 'firebase_options.dart';
//
//
// Future<void> main() async {
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         splashColor: Colors.transparent,
//         highlightColor: Colors.transparent,
//         primarySwatch: Colors.blue,
//         //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//        // useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Emotion Tracker'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   late User _currentUser;
//   final int _counter = 0;
//   final FirebaseAuth _auth=FirebaseAuth.instance;
//
//
//
//   void _addEmotion(){
//     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
//       return const AddEmotionDialog();
//     },
//     fullscreenDialog: true));
//
//   }
//
//   @override
//
//   void initState(){
//     _auth.signInAnonymously().then((user){
//       setState(() {
//         _currentUser=user as User;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     Future<UserCredential> userFuture=_auth.signInAnonymously();
//     userFuture.then((user){
//       String uid=user.credential.toString();
//     });
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body: _currentUser !=null? _buildStream():Container(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addEmotion,
//
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//
//   Widget _buildStream(){
//     return StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('users/${_currentUser.uid}/journal').snapshots(),
//         builder: (context,snapshot){
//           if(!snapshot.hasData) return LinearProgressIndicator();
//
//           return _buildList(context,snapshot.data!.docs);
//         });
//
//
// }
//
//   Widget _buildList(BuildContext context,List<DocumentSnapshot> documents){
//     return ListView.builder(
//         itemCount: documents.length,
//         itemBuilder:(context,i){
//           return _buildListItem(context, documents[i] as List<DocumentSnapshot<Object?>>);
//         });
//   }
//
//   Widget _buildListItem(BuildContext context,List<DocumentSnapshot> documents){
//
//     final f=new DateFormat('MMM-dd-yyy hh:mm');
//
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         elevation: 5,
//         child: ListTile(
//           contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
//           leading: Container(
//             padding: EdgeInsets.only(right: 12.0),
//             decoration: new BoxDecoration(
//               border: new
//                   Border(
//                 right: new BorderSide(
//                   width: 1.0,
//                   color: Colors.black26,
//                 ),
//
//               ),
//             ),
//             child: Image.asset('images/${snapshot["emotion"]}.png',
//             width: 50,
//             height: 50,),
//           ),
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Padding(padding: EdgeInsets.all(10.0),
//               child: Text(
//                 f.format((snapshot["timestamp"] as Timestamp).toDate()),
//                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
//               ),),
//
//               Padding(padding: EdgeInsets.all(5.0),
//               child: Text(
//                 snapshot["emotion"].toString(),
//                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
//               ),)
//             ],
//           ),
//
//           subtitle: Row(
//             children: <Widget>[
//               Text(snapshot["activities"].toString(),style: TextStyle(color: Colors.black),)
//             ],
//           ),
//
//
//         ),
//       ),
//     );
//   }
//   }

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manodisha/splash_screen.dart';

import 'addEmotion.dart';
import 'firebase_options.dart';
import 'journalEntry.dart';
import 'package:get/get.dart';

import 'openingScreen.dart';
// Import Get package

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: OpeningScreen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // splashColor: Colors.transparent,
        //highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff070f28),
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late User _currentUser;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _addEmotion() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext) {
        return const AddEmotionDialog();
      },
      fullscreenDialog: true,
    ));
  }

  @override
  void initState() {
    super.initState();
    _auth.signInAnonymously().then((user) {
      setState(() {
        _currentUser = user.user!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: const Color(0xff070f28),
        centerTitle: true,
        title: Text(widget.title,
        style: const TextStyle(
          color: Colors.white,
        ),),
      ),
      body: _currentUser != null ? _buildStream() : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFC9D8EF),
        onPressed: _addEmotion,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildStream() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore
          .instance
          .collection('users/${_currentUser.uid}/journal')
      .orderBy("timestamp",descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const LinearProgressIndicator();

        return _buildList(context, snapshot.data!.docs);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> documents) {
    return ListView.builder(
      itemCount: documents.length,
      itemBuilder: (context, i) {
        return _buildListItem(context, JournalEntry.fromSnapshot(documents[i]));
      },
    );
  }

  Widget _buildListItem(BuildContext context, JournalEntry journalEntry  ) {
    final f = DateFormat('MMM-dd-yyyy hh:mm');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color(0xFFC9D8EF),
        elevation: 5,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(

            padding: const EdgeInsets.only(right: 12.0),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1.0,
                  color: Colors.black26,
                ),
              ),
            ),
            child: Image.asset(
              "assets/images/${journalEntry.emotions}.png" ,
              width: 50,
              height: 50,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  f.format(journalEntry.entryDate),
                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  journalEntry.emotions.toUpperCase(),
                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: <Widget>[
              Text(
                journalEntry.activities.join(','),
                style: const TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
