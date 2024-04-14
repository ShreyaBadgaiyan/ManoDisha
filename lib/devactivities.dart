// // // import 'package:emotion_tracker/models/activity.dart';
// // // import 'package:flutter/material.dart';
// // //
// // // class DevActivities extends StatefulWidget {
// // //   final List<String> emotions;
// // //
// // //   const DevActivities(this.emotions, {Key? key}) : super(key: key);
// // //
// // //   @override
// // //   State<DevActivities> createState() => DevActivitiesState(emotions);
// // // }
// // //
// // // class DevActivitiesState extends State<DevActivities> {
// // //   final List<String> selectedEmotions;
// // //   List<Activity> selectedActivity = [];
// // //
// // //   DevActivitiesState(this.selectedEmotions) : super();
// // //
// // //   final List<Activity> _developerActivities = [
// // //     Activity("Coding", Category.Development  ),
// // //     Activity("Meeting", Category.Development ),
// // //     Activity("Presentation", Category.Development ),
// // //     Activity("Party", Category.Development ),
// // //     Activity("Exercise", Category.Health ),
// // //     Activity("Running", Category.Health ),
// // //     Activity("Travel", Category.Health ),
// // //     Activity("Vacation", Category.Health ),
// // //     Activity("Coffee", Category.Development ),
// // //   ];
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text("Developer Activities"),
// // //       ),
// // //       body: Padding(
// // //         padding: EdgeInsets.all(20.0),
// // //         child: Wrap(
// // //           runSpacing: 20.0,
// // //           spacing: 10.0,
// // //           children: _buildActivitiesList(_developerActivities),
// // //         ),
// // //       ),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: () {},
// // //         child: Icon(Icons.chevron_right),
// // //       ),
// // //     );
// // //   }
// // //
// // //   List<Widget> _buildActivitiesList(List<Activity> devActivities) {
// // //     List<Widget> chips = [];
// // //     for (var devActivity in devActivities) {
// // //       chips.add(
// // //         ChoiceChip(
// // //           label: Text(devActivity.title),
// // //           labelPadding: EdgeInsets.only(left: 10, right: 10),
// // //           labelStyle: TextStyle(
// // //             fontSize: 22,
// // //             color: Colors.black,
// // //           ),
// // //           selected: selectedActivity.contains(devActivity),
// // //           onSelected: (bool value) {
// // //             setState(() {
// // //               if (value) {
// // //                 selectedActivity.add(devActivity);
// // //               } else {
// // //                 selectedActivity.remove(devActivity);
// // //               }
// // //             });
// // //           },
// // //         ),
// // //       );
// // //     }
// // //     return chips;
// // //   }
// // // }
// //
// // import 'dart:js_interop';
// //
// // import 'package:emotion_tracker/main.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'models/activity.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// //
// // class DevActivities extends StatefulWidget {
// //   final List<String> emotions;
// //
// //   const DevActivities(this.emotions, {super.key});
// //
// //   @override
// //   State<DevActivities> createState() => DevActivitiesState(emotions);
// // }
// //
// // class DevActivitiesState extends State<DevActivities> {
// //   final List<String> selectedEmotions;
// //   List<Activity> selectedActivity = [];
// //
// //   DevActivitiesState(this.selectedEmotions) : super();
// //
// //   final List<Activity> _developerActivities = [
// //     Activity("Coding", Category.Development),
// //     Activity("Meeting", Category.Development),
// //     Activity("Presentation", Category.Development),
// //     Activity("Party", Category.Development),
// //     Activity("Exercise", Category.Health),
// //     Activity("Running", Category.Health),
// //     Activity("Travel", Category.Health),
// //     Activity("Vacation", Category.Health),
// //     Activity("Coffee", Category.Development),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     Future<UserCredential> userFuture=_auth.signInAnonymously();
// //     userFuture.then((user){
// //       String uid=user.credential.toString();
// //     });
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Developer Activities"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Wrap(
// //           runSpacing: 20.0,
// //           spacing: 10.0,
// //           children: _buildActivitiesList(_developerActivities),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           saveEmotion();
// //           Navigator.of(context).push(
// //         MaterialPageRoute(
// //           builder: (BuildContext context) {
// //             return const MyHomePage(title: 'Emotion Tracker');
// //           },
// //         ),
// //       );
// //     },
// //         child: const Icon(Icons.chevron_right),
// //       ),
// //     );
// //   }
// //
// //   List<Widget> _buildActivitiesList(List<Activity> devActivities) {
// //     List<Widget> chips = [];
// //     for (var devActivity in devActivities) {
// //       chips.add(
// //         ChoiceChip(
// //           key: ValueKey(devActivity.title),
// //           label: Text(devActivity.title),
// //           labelPadding: const EdgeInsets.only(left: 10, right: 10),
// //           labelStyle: const TextStyle(
// //             fontSize: 22,
// //             color: Colors.black,
// //           ),
// //           selectedColor: Colors.lightGreen,
// //           selected: selectedActivity.contains(devActivity),
// //           onSelected: (bool value) {
// //             setState(() {
// //               if (value) {
// //                 selectedActivity.add(devActivity);
// //               } else {
// //                 selectedActivity.remove(devActivity);
// //               }
// //             });
// //           },
// //         ),
// //       );
// //     }
// //     return chips;
// //   }
// //
// //   void saveEmotion(){
// //     var emotions=selectedEmotions;
// //     var activities=selectedActivity;
// //     FirebaseFirestore.instance.currentUser().then((user){
// //       FirebaseAuth.instance.currentUser!.then((user){
// //         FirebaseFirestore.instance.collection('users/'+user.UserCredential.toString()+'/journal').document().setData{
// //
// //         }
// //       });
// //     });
// //
// //     Navigator.of(context).popUntil((x){
// //       return x.isFirst;}
// //     );
// //   }
// //   }
// //
// //
import 'dart:async';

import 'package:emotion_tracker/thanking.dart';
import 'package:flutter/material.dart';
import 'models/activity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DevActivities extends StatefulWidget {
  final List<String> emotions;

  const DevActivities(this.emotions, {super.key});

  @override
  State<DevActivities> createState() => DevActivitiesState(emotions);
}

class DevActivitiesState extends State<DevActivities> {
  final List<String> selectedEmotions;
  List<Activity> selectedActivity = [];

  // List<Activity> _developerActivities=[];
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // DevActivitiesState(this.selectedEmotions):super();
  DevActivitiesState(this.selectedEmotions) : super();


  late List<Activity> _developerActivities = [
    Activity("Coding", Category.Development),
    Activity("Meeting", Category.Development),
    Activity("Presentation", Category.Development),
    Activity("Party", Category.Development),
    Activity("Exercise", Category.Health),
    Activity("Running", Category.Health),
    Activity("Travel", Category.Health),
    Activity("Vacation", Category.Health),
    Activity("Coffee", Category.Development),
  ];

  @override
  void initState() {
    getDeveloperActivities().then((activities) {
      setState(() {
        _developerActivities = activities;
      });
    });
    super.initState();
  }

  Future<List<Activity>> getDeveloperActivities() async {
    QuerySnapshot snapshot =
    await FirebaseFirestore.instance.collection("activities").get();
    //List<DocumentSnapshot> docs=snapshot.documents;
    List<Activity> activities = snapshot.docs.map((doc) {
      return Activity.fromSnapShot(doc);
    }).toList();
    return activities;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Developer Activities",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: const Color(0xff070f28),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          runSpacing: 20.0,
          spacing: 10.0,
          children: _buildActivitiesList(_developerActivities),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFC9D8EF),
        onPressed: () {
          saveEmotion();
        },
        child: const Icon(Icons.chevron_right),
      ),
    );
  }

  List<Widget> _buildActivitiesList(List<Activity> devActivities) {
    List<Widget> chips = [];
    for (var devActivity in devActivities) {
      chips.add(
        ChoiceChip(
          key: ValueKey(devActivity.title),
          label: Text(devActivity.title),
          labelPadding: const EdgeInsets.only(left: 10, right: 10),
          labelStyle: const TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
          selectedColor: const Color(0xFFC9D8EF),
          selected: selectedActivity.contains(devActivity),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                selectedActivity.add(devActivity);
              } else {
                selectedActivity.remove(devActivity);
              }
            });
          },
        ),
      );
    }
    return chips;
  }

//   void saveEmotion() {
//     var emotions = selectedEmotions;
//     var activities = selectedActivity;
//     _auth.signInAnonymously().then((userCredential) {
//       String uid = userCredential.user!.uid;
//       FirebaseFirestore.instance.collection('users/$uid/journal').add({
//         'emotions': emotions.join(','),
//         'activities': activities.map((activity) => activity.title).toList(),
//         'timestamp': Timestamp.now(),
//       }).then((_) {
//         Navigator.popUntil(context, (route) => route.isFirst);
//       }).catchError((error) {
//         print("Failed to add journal entry: $error");
//       });
//     }).catchError((error) {
//       print("Failed to sign in anonymously: $error");
//     });
//   }
// }

  void saveEmotion() {
    var emotions = widget.emotions;
    var activities = selectedActivity;
    _auth.signInAnonymously().then((userCredential) {
      String uid = userCredential.user!.uid;
      FirebaseFirestore.instance
          .collection('users/$uid/journal')
          .add({
        'emotions': emotions.join(','),
        'activities': activities.map((activity) => activity.title).toList(),
        'timestamp': Timestamp.now(),
      })
          .then((_) {
        // Navigate to ThankingPage
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ThankingPage()),
        );
      })
          .catchError((error) => print("Failed to add journal entry: $error"));
    }).catchError((error) => print("Failed to sign in anonymously: $error"));
  }
}

// import 'package:emotion_tracker/thanking.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'models/activity.dart';
//
// class DevActivities extends StatefulWidget {
//   final List<String> emotions;
//
//   const DevActivities(this.emotions, {Key? key}) : super(key: key);
//
//   @override
//   State<DevActivities> createState() => DevActivitiesState();
// }
//
// class DevActivitiesState extends State<DevActivities> {
//   final List<String> selectedEmotions = [];
//   List<Activity> selectedActivity = [];
//   List<Activity> _developerActivities = [];
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   @override
//   void initState() {
//     super.initState();
//     getDeveloperActivities().then((activities) {
//       setState(() {
//         _developerActivities = activities;
//       });
//     });
//   }
//
//   Future<List<Activity>> getDeveloperActivities() async {
//     QuerySnapshot snapshot =
//     await FirebaseFirestore.instance.collection("activities").get();
//     List<DocumentSnapshot> docs = snapshot.docs;
//     List<Activity> activities = docs.map((doc) {
//       return Activity.fromSnapShot(doc);
//     }).toList();
//     return activities;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Developer Activities"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Wrap(
//           runSpacing: 20.0,
//           spacing: 10.0,
//           children: _buildActivitiesList(_developerActivities),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           saveEmotion();
//         },
//         child: Icon(Icons.chevron_right),
//       ),
//     );
//   }
//
//   List<Widget> _buildActivitiesList(List<Activity> devActivities) {
//     List<Widget> chips = [];
//     for (var devActivity in devActivities) {
//       chips.add(
//         ChoiceChip(
//           key: ValueKey(devActivity.title),
//           label: Text(devActivity.title),
//           labelPadding: EdgeInsets.only(left: 10, right: 10),
//           labelStyle: TextStyle(
//             fontSize: 22,
//             color: Colors.black,
//           ),
//           selectedColor: Colors.lightGreen,
//           selected: selectedActivity.contains(devActivity),
//           onSelected: (bool value) {
//             setState(() {
//               if (value) {
//                 selectedActivity.add(devActivity);
//               } else {
//                 selectedActivity.remove(devActivity);
//               }
//             });
//           },
//         ),
//       );
//     }
//     return chips;
//   }
//
// //   void saveEmotion() {
// //     var emotions = widget.emotions;
// //     var activities = selectedActivity;
// //     _auth.signInAnonymously().then((userCredential) {
// //       String uid = userCredential.user!.uid;
// //       FirebaseFirestore.instance
// //           .collection('users/$uid/journal')
// //           .add({
// //         'emotions': emotions.join(','),
// //         'activities': activities.map((activity) => activity.title).toList(),
// //         'timestamp': Timestamp.now(),
// //       })
// //           .then((_) => Navigator.popUntil(context, (route) => route.isFirst))
// //           .catchError((error) => print("Failed to add journal entry: $error"));
// //     }).catchError((error) => print("Failed to sign in anonymously: $error"));
// //   }
// // }
//   void saveEmotion() {
//     var emotions = widget.emotions;
//     var activities = selectedActivity;
//     _auth.signInAnonymously().then((userCredential) {
//       String uid = userCredential.user!.uid;
//       FirebaseFirestore.instance
//           .collection('users/$uid/journal')
//           .add({
//         'emotions': emotions.join(','),
//         'activities': activities.map((activity) => activity.title).toList(),
//         'timestamp': Timestamp.now(),
//       })
//           .then((_) {
//         // Navigate to ThankingPage
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ThankingPage()),
//         );
//       })
//           .catchError((error) => print("Failed to add journal entry: $error"));
//     }).catchError((error) => print("Failed to sign in anonymously: $error"));
//   }
