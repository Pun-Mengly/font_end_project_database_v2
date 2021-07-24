import 'package:flutter/material.dart';

import '../../majors/c_plus_plus/widget/card_widget.dart';
import '../../majors/database/util/core_database_declaration.dart';
import '../../majors/widget/video_pdf_button_widget.dart';

class CPlusPlus extends StatelessWidget {
  const CPlusPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          // for (var c in chapter)
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter One',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 1',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Two',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Three',
                    videoPath: variable.videoPathChapterThree,
                    pdfPath: variable.pdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Four',
                    videoPath: variable.videoPathChapterFour,
                    pdfPath: variable.pdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Five',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Six',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Seven',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseCPlusPLus(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'C++ Chapter Eight',
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
