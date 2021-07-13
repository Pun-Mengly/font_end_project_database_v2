import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/majors/computer_community/widget/card_widget.dart';
import 'package:front_end_project_database_v2/majors/database/util/core_database_declaration.dart';
import 'package:front_end_project_database_v2/majors/widget/video_pdf_button_widget.dart';

class ComputerCommunity extends StatelessWidget {
  const ComputerCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var variable = CoreDatabaseDeclareURL();

    return SingleChildScrollView(
      child: Column(
        children: [
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Two',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 2',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Three',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterThree,
                  ),
                ),
              );
            },
            chapter: 'Chapter 3',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Four',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFour,
                  ),
                ),
              );
            },
            chapter: 'Chapter 4',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Five',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterFive,
                  ),
                ),
              );
            },
            chapter: 'Chapter 5',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Six',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSix,
                  ),
                ),
              );
            },
            chapter: 'Chapter 6',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Seven',
                    videoPath: variable.VideoPathChapterTwo,
                    pdfPath: variable.PdfPathChapterSeven,
                  ),
                ),
              );
            },
            chapter: 'Chapter 7',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Eight',
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
