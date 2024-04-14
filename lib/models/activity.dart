import 'package:cloud_firestore/cloud_firestore.dart';

class Activity{

  final String title;
  final Category category;

  Activity(this.title,this.category);

  static Activity fromData(String id,Map data){
    return Activity(id,data['title']);
  }

  static Activity fromSnapShot(DocumentSnapshot snapshot){
    return fromData(snapshot.id, snapshot.data as Map);
  }
}

enum Category {
  Development,
  Health
}
