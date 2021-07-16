import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';
import 'package:front_end_project_database_v2/majors/english/widget/card_widget.dart';
import 'package:front_end_project_database_v2/majors/widget/video_pdf_button_widget.dart';

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
                    title: 'English Chapter Two',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterTwo,
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
                    videoPath: variable.VideoPathChapterThree,
                    pdfPath: variable.PdfPathChapterThree,
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
                    videoPath: variable.VideoPathChapterFour,
                    pdfPath: variable.PdfPathChapterFour,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFive,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSix,
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
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSeven,
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
