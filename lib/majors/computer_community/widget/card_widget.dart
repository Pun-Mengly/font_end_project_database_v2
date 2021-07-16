import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/computer_community/util/core_computer_community_declaration.dart';

class CardCourseComputerCommunity extends StatelessWidget {
  final String chapter;
  final Function pathOfPdfOnTap;

  const CardCourseComputerCommunity({
    Key? key,
    required this.pathOfPdfOnTap,
    required this.chapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreComputerCommunityDeclareURL();
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'Computer Community',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Kim No'),
          trailing: Text(chapter, style: TextStyle(color: Colors.indigo)),
          leading: CircleAvatar(
            radius: 20,
            child: CircleAvatar(radius: 20, child: Text('C')),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
