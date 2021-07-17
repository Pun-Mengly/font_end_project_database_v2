import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/Information/card_widget.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[600],
            title: Text('Hot News'),
          ),
          backgroundColor: Colors.grey[300],
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5, top: 5),
              child: Column(
                children: [
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infoRest.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'),
                  CardInfo(image: 'assets/images/info/infopay.jpg'
                      // image: NetworkImage(
                      //   item,
                      // ),
                      ),
                ],
              ),
            ),
          )),
    );
  }
}
