import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/computer_community/all_chapter.dart';
import 'package:front_end_project_database_v2/majors/database/all_chapter.dart';

class TabBarContent extends StatefulWidget {
  const TabBarContent({Key? key}) : super(key: key);

  @override
  _TabBarContentState createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent> {
  @override
  Widget build(BuildContext context) {
    List<String> header = [
      'Data Structure',
      'C++',
      'Database',
      'English',
      'Computer Architecture',
      'Computer Community'
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: header.length,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            CircleAvatar(
              backgroundColor: Colors.brown,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(
              width: 12,
            )
          ],
          title: Text('e-learning'.toUpperCase()),
          backgroundColor: Colors.indigo,
          bottom: TabBar(
            //indicatorPadding: EdgeInsets.zero(),
            indicatorColor: Colors.black,
            indicator: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                color: Colors.black26),
            isScrollable: true,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              for (var head in header)
                Tab(
                  text: head,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.teal,
            ),
            DataBase(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightGreen,
            ),
            ComputerCommunity()
          ],
        ),
      ),
    );
  }
}
