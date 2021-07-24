import 'package:flutter/material.dart';

import '../../majors/database/util/core_database_declaration.dart';
import '../../majors/english/widget/card_widget.dart';
import '../../majors/widget/video_pdf_button_widget.dart';

class English extends StatelessWidget {
  const English({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          // for (var c in chapter)
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter One',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 1',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Two',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Three',
                    videoPath: variable.videoPathChapterThree,
                    pdfPath: variable.pdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Four',
                    videoPath: variable.videoPathChapterFour,
                    pdfPath: variable.pdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Five',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Six',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Seven',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseEnglish(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'English Chapter Eight',
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
