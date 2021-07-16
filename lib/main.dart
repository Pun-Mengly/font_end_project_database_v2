import 'package:flutter/material.dart';

import '../../login/pages/login.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //  home: SafeArea(child: Scaffold(body: TabBarContent())));
        home: LoginPage());
    // home: DataTableWidget());
  }
}
