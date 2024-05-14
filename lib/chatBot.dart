// import 'package:flutter/material.dart';
// import 'package:manodisha/providers/chats_provider.dart';
// import 'package:manodisha/providers/models_provider.dart';
// import 'package:manodisha/screens/chat_screen.dart';
// import 'package:provider/provider.dart';
//
// import 'constants/constants.dart';
//
// class ChatBot extends StatefulWidget {
//   const ChatBot({super.key});
//
//   @override
//   State<ChatBot> createState() => _ChatBotState();
// }
//
// class _ChatBotState extends State<ChatBot> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (_) => ModelsProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (_) => ChatProvider(),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Flutter ChatBOT',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//             scaffoldBackgroundColor: scaffoldBackgroundColor,
//             appBarTheme: AppBarTheme(
//               color: cardColor,
//             )),
//         home: const ChatScreen(),
//       ),
//     );
//   }
//   }
//
