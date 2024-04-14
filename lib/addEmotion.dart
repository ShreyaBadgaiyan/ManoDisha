// import 'package:flutter/material.dart';
//
// import 'devactivities.dart';
//
// class AddEmotionDialog extends StatefulWidget {
//   const AddEmotionDialog({super.key});
//
//   @override
//   State<AddEmotionDialog> createState() => _AddEmotionDialogState();
// }
//
// class _AddEmotionDialogState extends State<AddEmotionDialog> {
//   List<String> _emotions=List.from(["angry","bored","confused",
//   "happy","ill","nerd","sad","quiet","smile","surprised","shocked"]);
//
//   late List<String> _selectedEmotions;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Emotion'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: GridView.count(crossAxisCount: 4, shrinkWrap: true,
//           children: _buildEmotionImages(_emotions),),
//
//
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.chevron_right),
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (BuildContext context) {
//                 return DevActivities(_selectedEmotions);
//               },
//             ),
//           );
//         },),
//     );
//   }
//
//       List _buildEmotionImages(List<String> emotions){
//         List widgets=List();
//
//         widgets.add(TextButton(onPressed: (){},
//             child: Column(
//               children: <Widget>[
//                 Icon((Icons.add,size:50) as IconData?),
//                 Chip(label: Text('Create'),labelStyle: TextStyle(color: Colors.white,backgroundColor: Colors.blue))
//               ],
//             )
//
//         ));
//
//         widgets.add(TextButton(onPressed: (){},
//             child: Column(
//               children: <Widget>[
//                 Icon(Icons.camera,size:50),
//                 Chip(label: Text('Take Picture'),labelStyle: TextStyle(color: Colors.white,backgroundColor: Colors.blue))
//
//
//
//               ],
//             )));
//
//         widgets.add(TextButton(onPressed: (){},
//             child: Column(
//               children: <Widget>[
//                 Icon(Icons.image,size:50),
//                 Chip(label: Text('Gallery'),avatar:Icon(Icons.add_circle),labelStyle: TextStyle(color: Colors.white,backgroundColor: Colors.blue))
//
//               ],
//             )));
//
//         for (var emotion in emotions){
//           widget.add(
//             TextButton(
//                 onPressed: (){
//                   _onEmotionSelected(emotion);
//                 },
//                 child: Column(
//                   verticalDirection: VerticalDirection.down,
//                   children: <Widget>[
//                     Image.asset("images/$emotion.png",width: 50,height: 50,),
//                     Chip(label: Text('$emotion'),
//                         avatar:_selectedEmotions.contains(emotion)?Icon(Icons.check):null,
//                         labelStyle: TextStyle(color: Colors.white,
//                             backgroundColor:_selectedEmotions.contains(emotion)?Colors.blueGrey:Colors.blue))
//
//                   ],
//                 ))
//           );
//     }
//
// return widgets;
//   }
//
//   void _onEmotionSelected(String emotion){
//
//     setState(() {
//       if(_selectedEmotions.contains(emotion)){
//       _selectedEmotions.remove(emotion);
//       }else{
//         _selectedEmotions.add(emotion);
//       }
//
//     });
//   }
// }
//

import 'package:flutter/material.dart';

import 'devactivities.dart';

class AddEmotionDialog extends StatefulWidget {
  const AddEmotionDialog({super.key});

  @override
  State<AddEmotionDialog> createState() => _AddEmotionDialogState();
}

class _AddEmotionDialogState extends State<AddEmotionDialog> {
  final List<String> _emotions = [
    "angry",
    "bored",
    "confused",
    "happy",
    "excited",
    "ill",
    "nerd",
    "sad",
    "quiet",
    "surprised",
    "shocked"
  ];

  late final List<String> _selectedEmotions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Emotion',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: const Color(0xff070f28),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          children: _buildEmotionImages(_emotions),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFC9D8EF),
        child: const Icon(Icons.chevron_right),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return DevActivities(_selectedEmotions );
              },
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildEmotionImages(List<String> emotions) {
    List<Widget> widgets = [];

    widgets.add(
      TextButton(
        onPressed: () {},
        child: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Icon(Icons.add, size: 50),
              Chip(
                backgroundColor:Color(0xff070f28) ,
                label: Text('Create'),
                labelStyle: TextStyle(color: Colors.white, ),
              )
            ],
          ),
        ),
      ),
    );

    widgets.add(
      TextButton(
        onPressed: () {},
        child: const Column(
          children: <Widget>[
            Icon(Icons.camera, size: 50),
            Chip(
              backgroundColor: Color(0xff070f28),
              label: Text('Take Picture'),
              labelStyle: TextStyle(color: Colors.white,),
            ),
          ],
        ),
      ),
    );

    widgets.add(
      TextButton(

        onPressed: () {},
        child: const Column(
          children: <Widget>[
            Icon(Icons.image, size: 50),
            Chip(
              label: Text('Gallery'),
              backgroundColor: Color(0xff070f28),
              avatar: Icon(Icons.add_circle),
              labelStyle: TextStyle(color: Colors.white,),
            ),
          ],
        ),
      ),
    );

    for (var emotion in emotions) {
      widgets.add(
        TextButton(
          onPressed: () {
            _onEmotionSelected(emotion);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Image.asset(
                    "assets/images/$emotion.png",
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(height: 10,),
                  Chip(
                    label: Text(emotion,
                    style: TextStyle(
                      color: _selectedEmotions.contains(emotion) ? Colors.black : Colors.white,
                    ),),
                    avatar: _selectedEmotions.contains(emotion) ? const Icon(Icons.check,color: Colors.black,) : null,
                    backgroundColor: _selectedEmotions.contains(emotion) ? const Color(0xFFC9D8EF) : const Color(0xFF0D3898),
              
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return widgets;
  }

  void _onEmotionSelected(String emotion) {
    setState(() {
      if (_selectedEmotions.contains(emotion)) {
        _selectedEmotions.remove(emotion);
      } else {
        _selectedEmotions.add(emotion);
      }
    });
  }
}
