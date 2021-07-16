import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/data_structure/util/core_database_declaration.dart';

class CardCourseDataStructure extends StatelessWidget {
  final String chapter;
  final Function pathOfPdfOnTap;

  const CardCourseDataStructure({
    Key? key,
    required this.pathOfPdfOnTap,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CorDataStructureDeclareURL();
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'DataStructure &Algorithms',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Ung Rithy'),
          trailing: Text(
            chapter,
            style: TextStyle(color: Colors.indigo),
          ),
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white60,
            child: Image.asset(variable.leadingImage),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
