import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/data_structure/widget/card_widget.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';
import 'package:front_end_project_database_v2/majors/widget/video_pdf_button_widget.dart';

class DataStructure extends StatelessWidget {
  const DataStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          // for (var c in chapter)
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Two',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Three',
                    videoPath: variable.VideoPathChapterThree,
                    pdfPath: variable.PdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Four',
                    videoPath: variable.VideoPathChapterFour,
                    pdfPath: variable.PdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Five',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Six',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Seven',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseDataStructure(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'DataStructure Chapter Eight',
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
