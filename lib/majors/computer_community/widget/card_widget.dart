import 'package:flutter/material.dart';

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
    return Card(
      elevation: 2,
      child: ListTile(
          title: Text(
            'Computer Community',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Mr.Kin No'),
          trailing: Text(chapter, style: TextStyle(color: Colors.indigo)),
          leading: CircleAvatar(
            radius: 20,
            child: CircleAvatar(
                radius: 20,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRsna4ika9S80RUmpoVj8LwJdKpFIfxzfHwAWG2wrN7L2v-W-pVeYHd-YlwOyC6cKiR3I&usqp=CAU')),
          ),
          onTap: () {
            pathOfPdfOnTap();
          }),
    );
  }
}
