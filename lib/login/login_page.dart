import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dashboard/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  String email = 'Programmer@gmail.com';
  String password = 'Ly@#112233!!*';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1606636660801-c61b8e97a1dc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGVkdWNhdGlvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
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
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                            width: 300,
                            child: _button(
                                name: 'Login'.toUpperCase(),
                                onTap: () {
                                  if (emailController.text == email &&
                                      passController.text == password) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dashboard(),
                                        ));
                                    print('Login');
                                  } else
                                    print('Wrong hx');
                                  Text('');
                                }))
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
}
