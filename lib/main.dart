import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/dashboard/dasboard.dart';

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
        home: Dashboard());
    // home: DataTableWidget());
  }
}
