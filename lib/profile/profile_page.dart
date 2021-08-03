import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.indigo, Colors.red])),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/background/profile.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Programmer',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Container(
                      height: 120,
                      child: Card(
                        margin: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _contentHeader(header: 'Grade'),
                                _dataOnHeader(data: 'B')
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _contentHeader(header: 'Score'),
                                _dataOnHeader(data: "231"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _contentHeader(header: 'Description'),
                                _dataOnHeader(data: 'Good')
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
            Expanded(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Info:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                          fontFamily: 'Merienda'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'My name is Programmer and I am a Student \nin year 2 "E4" at department IT\n(Computer Science) at Royal University of Phnom Penh (RUPP) & mobile app developer.',
                      style: TextStyle(fontSize: 19, fontFamily: 'Merienda'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                        child: SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Back')),
                    ))
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _contentHeader({required String header}) {
    return Text(
      header,
      style: TextStyle(
          fontSize: 17, color: Colors.red, fontWeight: FontWeight.bold),
    );
  }

  Widget _dataOnHeader({required String data}) {
    return Text(
      data,
      style: TextStyle(
          fontSize: 17, color: Colors.pinkAccent, fontWeight: FontWeight.bold),
    );
  }
}
