import 'package:flutter/material.dart';

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
        child: Container(
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
                  child: Image.asset(
                    'assets/images/dashboard/user.png',
                  ),
                ),
              ),
              DrawerWidget(
                title: 'Dashboard',
                icons: Icons.dashboard,
                function: () {
                  print('home');
                },
              ),
              DrawerWidget(
                title: 'Result',
                icons: Icons.format_list_numbered_outlined,
                function: () {
                  print('result');
                },
              ),
              DrawerWidget(
                title: 'Classmate',
                icons: Icons.view_list_outlined,
                function: () {
                  print('classmate');
                },
              ),
              DrawerWidget(
                title: 'Contact us',
                icons: Icons.contact_mail_outlined,
                function: () {
                  print('contact us');
                },
              ),
              DrawerWidget(
                title: 'Setting',
                icons: Icons.settings_outlined,
                function: () {
                  print('setting');
                },
              ),
              DrawerWidget(
                title: 'Log out',
                icons: Icons.login_outlined,
                function: () {
                  print('log out');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
