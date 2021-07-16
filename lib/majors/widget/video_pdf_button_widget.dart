import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/core/assets_pdf_path.dart';

class VideoPdfButton extends StatelessWidget {
  final String title;
  final String pdfPath;
  final String videoPath;
  const VideoPdfButton(
      {Key? key,
      required this.title,
      required this.pdfPath,
      required this.videoPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/background/background.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: null,
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => CoreVideosWidget(
                    //         path: videoPath,
                    //         title: 'Database System Chapter Two',
                    //       ),
                    //     ),
                    //   );
                    //  },
                    child: Text('Learn by Video')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssetPdfPath(
                                  pdfPath: pdfPath,
                                )),
                      );
                    },
                    child: Text('Learn by PDF')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
