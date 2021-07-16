import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/c_plus_plus/util/core_database_declaration.dart';

class CardCourseCPlusPLus extends StatelessWidget {
  final String chapter;
  final Function pathOfPdfOnTap;

  const CardCourseCPlusPLus({
    Key? key,
    required this.pathOfPdfOnTap,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreCPlusPlusDeclareURL();
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'C++ Programming',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Ly Sokun'),
          trailing: Text(
            chapter,
            style: TextStyle(color: Colors.indigo),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(variable.leadingImage),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
