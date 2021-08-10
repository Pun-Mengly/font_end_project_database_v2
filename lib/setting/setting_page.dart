import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../login/login_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Profile Setting'),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [_profile(), _desInfo(), _switchInfo(), _switchAuth()],
      ),
    ));
  }

  Widget _infoDetail(String leading, String trailing) {
    return ListTile(
      leading: Text(
        leading,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Text(trailing),
    );
  }

  Widget _switchButton(String leading, bool trailing) {
    return ListTile(
      leading: Text(
        leading,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      trailing: Switch(
        value: trailing,
        onChanged: (values) {
          setState(() {
            isSwitch = values;
            print('jjjj');
          });
        },
      ),
    );
  }

  Widget _profile() {
    return ClipRRect(
      child: Expanded(
        flex: 1,
        child: Card(
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage('assets/images/background/profile.jpg'),
              ),
              title: Text(
                'Programmer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Student E4'),
              trailing: ElevatedButton(
                child: Text('Log out'),
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.remove('email');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => LoginPage()));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _desInfo() {
    return ClipRRect(
      child: Expanded(
        flex: 3,
        child: Card(
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _infoDetail('Email', 'Programmer@gmail.com'),
              _infoDetail('Password', 'Ly@#112233!!*'),
              _infoDetail('Phone', '09876543'),
              _infoDetail('Username', 'Software Developer'),
              _infoDetail('Location', 'Phnom Penh ,Cambodia'),
            ],
          ),
          //  color: Colors.indigo,
        ),
      ),
    );
  }

  Widget _switchInfo() {
    return ClipRRect(
      child: Expanded(
        flex: 2,
        child: Card(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _switchButton('Location Tracking', true),
              _switchButton('Notification', false)
            ],
          ),
          // color: Colors.blue,
        ),
      ),
    );
  }

  Widget _switchAuth() {
    return ClipRRect(
      child: Expanded(
        flex: 2,
        child: Card(
          margin: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _switchButton('Sync with Facebook', true),
              _switchButton('Sync with Instagram', false)
            ],
          ),
        ),
      ),
    );
  }
}
