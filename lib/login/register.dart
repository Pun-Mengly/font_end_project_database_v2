import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:front_end_project_database_v2/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var conController = TextEditingController();
  String email = 'Programmer@gmail.com';
  String password = 'Ly@#112233!!*';
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
                            auth: emailController),
                        SizedBox(
                          height: 4,
                        ),
                        _textField(
                            name: 'Password',
                            preIcon: Icons.lock_open,
                            auth: passController),
                        SizedBox(
                          height: 4,
                        ),
                        _textField(
                            name: 'Confirm Password',
                            preIcon: Icons.lock_open,
                            auth: conController),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                            width: 300,
                            child: _button(
                              name: 'Submit'.toUpperCase(),
                              onTap: () {
                                setState(() {
                                  _register();
                                });
                              },
                            )),
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
      required TextEditingController auth}) {
    return TextField(
      controller: auth,
      // onChanged: (values) {},
      decoration: InputDecoration(
        hintText: name,
        prefixIcon: Icon(preIcon),
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

  //new
  void _register() async {
    String email = emailController.text.trim();
    String password = passController.text.trim();
    String confirmpassword = conController.text.trim();
    if (password == confirmpassword) {
      try {
        final User? user = (await _auth.createUserWithEmailAndPassword(
                email: email, password: password))
            .user;
        setState(() {
          if (user != null) {
            Fluttertoast.showToast(msg: "user created");
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    } else {
      Fluttertoast.showToast(msg: "Passwords don't match");
    }
  }
}
