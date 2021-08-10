import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        // themeMode: ThemeMode.dark,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //  home: SafeArea(child: Scaffold(body: TabBarContent())));
        home: LoginPage());
    // home: TabBarContent());
  }
}
