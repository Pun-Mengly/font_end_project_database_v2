import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/iot/util/core_database_declaration.dart';

class CardCourseIOT extends StatelessWidget {
  final String chapter;
  final Function pathOfPdfOnTap;

  const CardCourseIOT({
    Key? key,
    required this.pathOfPdfOnTap,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreIOTDeclareURL();
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'Computer Architecture',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Ouk Polyvan'),
          trailing: Text(
            chapter,
            style: TextStyle(color: Colors.indigo),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(variable.leadingImage),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
