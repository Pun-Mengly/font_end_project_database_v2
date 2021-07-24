import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/all_major_tabar/all_major_tabar.dart';

void main() {
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
        //     home: Dashboard());
        home: TabBarContent());
  }
}
