import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/Information/facebook_ui/info.dart';
import 'package:front_end_project_database_v2/setting/setting_page.dart';

import '../../dashboard/card.dart';
import '../../list_student/table_student.dart';
import '../../majors/all_major_tabar/all_major_tabar.dart';

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
            CircleAvatar(
              //backgroundColor: Colors.grey[300],
              radius: 21,
              child: Image.asset('assets/images/dashboard/user.png'),
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
                  Container(
                      height: size.toDouble(),
                      width: size.toDouble(),
                      child: CardDashboard(
                        title: 'View Attendances',
                        image: 'assets/images/dashboard/vview_attendance.png',
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: size.toDouble(),
                      width: size.toDouble(),
                      child: CardDashboard(
                        title: 'Result Examination',
                        image: 'assets/images/dashboard/exam.png',
                      )),
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
