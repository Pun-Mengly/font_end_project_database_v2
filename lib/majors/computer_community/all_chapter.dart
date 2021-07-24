import 'package:flutter/material.dart';

import '../../majors/computer_community/widget/card_widget.dart';
import '../../majors/database/util/core_database_declaration.dart';
import '../../majors/widget/video_pdf_button_widget.dart';

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
                    title: 'Computer community Chapter One',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
                  ),
                ),
              );
            },
            chapter: 'Chapter 1',
          ),
          CardCourseComputerCommunity(
            pathOfPdfOnTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPdfButton(
                    title: 'Computer community Chapter Two',
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterTwo,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterThree,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFour,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterFive,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSix,
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
                    videoPath: variable.videoPathChapterTwo,
                    pdfPath: variable.pdfPathChapterSeven,
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
