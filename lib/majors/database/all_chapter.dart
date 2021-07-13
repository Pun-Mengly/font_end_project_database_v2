import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';
import 'package:front_end_project_database_v2/majors/database/widget/card_widget.dart';
import 'package:front_end_project_database_v2/majors/widget/video_pdf_button_widget.dart';

class DataBase extends StatelessWidget {
  const DataBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          // for (var c in chapter)
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Two',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Three',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Four',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Five',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Six',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Seven',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Eight',
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
