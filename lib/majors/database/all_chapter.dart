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
                    title: 'Database Chapter One',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 1',
          ),
          CardCourseDatabase(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Database Chapter Two',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
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
                    videoPath: variable.videoPathChapterThree,
                    pdfPath: variable.pdfPathChapterThree,
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
                    videoPath: variable.videoPathChapterFour,
                    pdfPath: variable.pdfPathChapterFour,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFive,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSix,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSeven,
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
