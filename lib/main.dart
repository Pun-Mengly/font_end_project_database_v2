import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/dashboard/dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  print(email);
  runApp(MaterialApp(
    home: email == null ? LoginPage() : Dashboard(),
    debugShowCheckedModeBanner: false,
  ));
}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         // darkTheme: ThemeData(
//         //   brightness: Brightness.dark,
//         // ),
//         // themeMode: ThemeMode.dark,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         //  home: SafeArea(child: Scaffold(body: TabBarContent())));
//         home: email);
//     // home: TabBarContent());
//   }
// }
