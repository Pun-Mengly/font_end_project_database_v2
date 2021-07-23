import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final String title;
  final IconData icons;
  final Function function;
  const DrawerWidget(
      {Key? key,
      required this.title,
      required this.icons,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icons,
          color: Colors.white,
        ),
        title: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
        onTap: () => function()
        //Navigator.of(context).pop();
        //Navigator.of(context).push(MaterialPageRoute(
        // builder: (BuildContext context) => HomeScreen()));

        );
  }
}
