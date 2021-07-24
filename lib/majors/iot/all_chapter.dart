import 'package:flutter/material.dart';

import '../../majors/database/util/core_database_declaration.dart';
import '../../majors/iot/widget/card_widget.dart';
import '../../majors/widget/video_pdf_button_widget.dart';

class IOT extends StatelessWidget {
  const IOT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          // for (var c in chapter)
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter One',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 1',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Two',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Three',
                    videoPath: variable.videoPathChapterThree,
                    pdfPath: variable.pdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Four',
                    videoPath: variable.videoPathChapterFour,
                    pdfPath: variable.pdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Five',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Six',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Seven',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseIOT(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer &IOT Chapter Eight',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterEight,
                  ),
                ),
              );
            },
            chapter: 'Chapter 8',
          ),
        ],
      ),
    );
  }
}
