import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';

class CardCourseDatabase extends StatelessWidget {
  final String chapter;
  final Function pathOfPdfOnTap;

  const CardCourseDatabase({
    Key? key,
    required this.pathOfPdfOnTap,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'Database System',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Chenda Sovisal'),
          trailing: Text(
            chapter,
            style: TextStyle(color: Colors.indigo),
          ),
          leading: CircleAvatar(
            radius: 20,
            child: CircleAvatar(child: Image.network(variable.leadingImage)),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
