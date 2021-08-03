import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/dashboard/dashboard.dart';
import 'package:front_end_project_database_v2/list_student/table_student.dart';
import 'package:front_end_project_database_v2/login/login_page.dart';
import 'package:front_end_project_database_v2/setting/setting_page.dart';

import '../../drawer/widget.dart';

class DrawerContent extends StatefulWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  //static int index = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors
            .indigo[900], //This will change the drawer background to blue.
        //other styles
      ),
      child: Drawer(
        child: Stack(children: [
          Container(
            //color: Colors.indigo[900],
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.indigo[700],
                  ),
                  otherAccountsPictures: [
                    Image.asset('assets/images/dashboard/user.png'),
                  ],
                  accountName: Text("Programmer"),
                  accountEmail: Text("Programmer@gmail.com"),
                  onDetailsPressed: () {},
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/background/profile.jpg'),
                  ),
                ),
                DrawerWidget(
                  title: 'Dashboard',
                  icons: Icons.dashboard,
                  function: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ));
                    print('home');
                  },
                ),
                DrawerWidget(
                  title: 'Classmate',
                  icons: Icons.view_list_outlined,
                  function: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DataTableWidget(),
                        ));
                    print('classmate');
                  },
                ),
                DrawerWidget(
                  title: 'Contact us',
                  icons: Icons.contact_mail_outlined,
                  function: () {
                    Navigator.pop(context);
                    print('contact us');
                  },
                ),
                DrawerWidget(
                  title: 'Setting',
                  icons: Icons.settings_outlined,
                  function: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingPage(),
                        ));
                    print('setting');
                  },
                ),
                DrawerWidget(
                  title: 'Log out',
                  icons: Icons.login_outlined,
                  function: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                    print('log out');
                  },
                ),
              ],
            ),
          ),
          Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                'Version 1.0',
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
