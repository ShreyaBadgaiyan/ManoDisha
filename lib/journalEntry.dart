import 'package:cloud_firestore/cloud_firestore.dart';
//
// class JournalEntry{
//   final String emotion;
//   final List<String> activities;
//   final DateTime entryDate;
//
//   JournalEntry(this.emotion,this.activities,this.entryDate);
//
//   static fromData(Map data){
//     return JournalEntry(
//         data["emotion"],
//         List.from(data["activities"]),
//         (data["timestamp"] as Timestamp).toDate());
//   }
//
//   static fromSnapshot(DocumentSnapshot snapshot){
//     return JournalEntry.fromData(snapshot.data as Map);
//   }
class JournalEntry {
  final String emotions;
  final List<String> activities;
  final DateTime entryDate;

  JournalEntry(this.emotions, this.activities, this.entryDate);

  // Add 'factory' keyword and type annotation for 'fromData'
  factory JournalEntry.fromData(Map<String, dynamic> data) {
    return JournalEntry(
      data["emotions"] as String,
      List<String>.from(data["activities"] as List<dynamic>),
      (data["timestamp"] as Timestamp).toDate(),
    );
  }

  // Add 'factory' keyword and type annotation for 'fromSnapshot'
  factory JournalEntry.fromSnapshot(DocumentSnapshot snapshot) {
    return JournalEntry.fromData(snapshot.data() as Map<String, dynamic>);
  }
}
