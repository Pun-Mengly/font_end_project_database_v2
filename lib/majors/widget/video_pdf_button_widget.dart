import 'package:flutter/material.dart';

import '../../core/assets_pdf_path.dart';

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
        backgroundColor: Colors.grey[300],
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
                    //       builder: (context) => VideoApp(
                    //         path: videoPath,
                    //       ),
                    //     ),
                    //   );
                    // },
                    child: Text('Learn by Video')),
                SizedBox(
                  height: 3,
                ),
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
