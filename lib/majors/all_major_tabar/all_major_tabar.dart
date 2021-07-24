import 'package:flutter/material.dart';

import '../../drawer/drawer.dart';
import '../../majors/c_plus_plus/all_chapter.dart';
import '../../majors/computer_community/all_chapter.dart';
import '../../majors/data_structure/all_chapter.dart';
import '../../majors/database/all_chapter.dart';
import '../../majors/english/all_chapter.dart';
import '../../majors/iot/all_chapter.dart';

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
        drawer: DrawerContent(),
        appBar: AppBar(
          actions: [
            CircleAvatar(
              child: Image.asset('assets/images/dashboard/user.png'),
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
            DataStructure(
                //  color: Colors.blue,
                ),
            CPlusPlus(),
            DataBase(),
            English(),
            IOT(),
            ComputerCommunity()
          ],
        ),
      ),
    );
  }
}
