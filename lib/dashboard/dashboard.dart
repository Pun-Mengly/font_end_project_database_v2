import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/profile/profile_page.dart';

import '../../Information/facebook_ui/info.dart';
import '../../dashboard/card.dart';
import '../../list_student/table_student.dart';
import '../../majors/all_major_tabar/all_major_tabar.dart';
import '../../setting/setting_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int size = 175;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          shadowColor: Colors.grey,
          title: Text(
            'Royal University of Phnom Penh',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: Icon(Icons.menu, color: Colors.black),
          backgroundColor: Colors.grey[300],
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 38,
                  color: Colors.black,
                )),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              },
              child: CircleAvatar(
                //backgroundColor: Colors.grey[300],
                radius: 21,
                backgroundImage:
                    AssetImage('assets/images/background/profile.jpg'),
              ),
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        //  drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FacebookInfo(),
                          ));
                    },
                    child: Container(
                        height: size.toDouble(),
                        width: size.toDouble(),
                        child: CardDashboard(
                          title: 'Information',
                          image: 'assets/images/dashboard/Information.png',
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TabBarContent()),
                      );
                      print('E-Learning');
                    },
                    child: Container(
                        height: size.toDouble(),
                        width: size.toDouble(),
                        child: CardDashboard(
                          title: 'E-Learning',
                          image: 'assets/images/dashboard/E_learning.png',
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DataTableWidget()),
                      );
                      print('List Class');
                    },
                    child: Container(
                        height: size.toDouble(),
                        width: size.toDouble(),
                        child: CardDashboard(
                          title: 'List of class',
                          image: 'assets/images/dashboard/list_class.png',
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingPage(),
                          ));
                    },
                    child: Container(
                        height: size.toDouble(),
                        width: size.toDouble(),
                        child: CardDashboard(
                          title: 'Setting',
                          image: 'assets/images/dashboard/setting.ico',
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
