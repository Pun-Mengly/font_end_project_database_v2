import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:front_end_project_database_v2/dashboard/dashboard.dart';
import 'package:front_end_project_database_v2/login/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  // String email = 'Programmer@gmail.com';
  // String password = 'Ly@#112233!!*';
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/background/background_login.jfif'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              height: 650,
              width: 300,
              //color: Colors.indigo,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _logo(),
                    SizedBox(
                      height: 120,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _textField(
                            name: 'Email',
                            preIcon: Icons.email_outlined,
                            obsText: false,
                            auth: emailController),
                        SizedBox(
                          height: 4,
                        ),
                        _textField(
                            name: 'Password',
                            preIcon: Icons.lock_open,
                            subIcon: Icons.visibility_off_outlined,
                            obsText: true,
                            auth: passController),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: _button(
                                    name: 'Register'.toUpperCase(),
                                    onTap: () {
                                      print('Register');
                                      Navigator.push<dynamic>(
                                        context,
                                        MaterialPageRoute<dynamic>(
                                          builder: (BuildContext context) =>
                                              RegisterPage(),
                                        ),
                                        //if you want to disable back feature set to false
                                      );
                                    })),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                  ),
                                )),
                          ],
                        ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        Container(
                            width: 300,
                            child: _button(
                              name: 'Login'.toUpperCase(),
                              onTap: () async {
                                setState(() {
                                  _signInWithEmailAndPassword();
                                });

                                // if (emailController.text == email &&
                                //     passController.text == password) {
                                //   Navigator.pushReplacement(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) => Dashboard(),
                                //       ));
                                //   print('Login');
                                // } else
                                //   print('Wrong hx');
                                // Text('');

                                // if (emailController.text == email &&
                                //     passController.text == password) {
                                //   _snackBarSuccess();
                                //   Navigator.pushReplacement(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) => Dashboard(),
                                //       ));
                                //   print('Login');
                                //
                                //   // _change();
                                // } else if (emailController.text == email &&
                                //     passController.text != password) {
                                //   _snackBarWrongPass();
                                // } else if (emailController.text != email &&
                                //     passController.text == password) {
                                //   _snackBarWrongUser();
                                // } else {
                                //   _snackBarWrong();
                                // }
                              },
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField(
      {required String name,
      required IconData preIcon,
      IconData? subIcon,
      required bool obsText,
      required TextEditingController auth}) {
    return TextField(
      controller: auth,
      // onChanged: (values) {},
      obscureText: obsText,
      decoration: InputDecoration(
        hintText: name,
        prefixIcon: Icon(preIcon),
        suffixIcon: Icon(subIcon),
        filled: true,
        fillColor: Colors.white38,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _button({required String name, required Function onTap}) {
    return ElevatedButton(onPressed: () => onTap(), child: Text(name));
  }

  Widget _logo() {
    return CircleAvatar(
      backgroundColor: Colors.white10,
      radius: 80,
      child: Image.asset(
        'assets/images/dashboard/Information.png',
        fit: BoxFit.cover,
      ),
    );
  }

  void _snackBarSuccess() {
    const snackBar = SnackBar(
      content: Text('Success'),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.indigo,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _snackBarWrongUser() {
    const snackBar = SnackBar(
      content: Text('Invalid username'),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _snackBarWrongPass() {
    const snackBar = SnackBar(
      content: Text('Invalid password'),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _snackBarWrong() {
    const snackBar = SnackBar(
      content: Text('Invalid username & password'),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  //new
  _signInWithEmailAndPassword() async {
    try {
      final User? user = (await _firebaseAuth.signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passController.text.trim()))
          .user;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', user.toString());
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext ctx) => Dashboard()));

      if (user != null) {
        setState(() {
          Fluttertoast.showToast(msg: "Signed In Successfully");
          Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => Dashboard(),
            ),
            (route) => false, //if you want to disable back feature set to false
          );
        });
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
