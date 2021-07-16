import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/c_plus_plus/widget/card_widget.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';
import 'package:front_end_project_database_v2/majors/widget/video_pdf_button_widget.dart';

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
                    title: 'C++ Chapter Two',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterTwo,
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
                    videoPath: variable.VideoPathChapterThree,
                    pdfPath: variable.PdfPathChapterThree,
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
                    videoPath: variable.VideoPathChapterFour,
                    pdfPath: variable.PdfPathChapterFour,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFive,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSix,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSeven,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterEight,
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
