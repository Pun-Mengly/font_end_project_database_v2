import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/core/asset_video_path.dart';
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYagBLh_A6d0nBDcQ1PcypQ5D-wK7xnAXSSZ0uHB1Q2QsuEmImrs2icZlnoVSL9_iY9HI&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoreVideosWidget(
                            path: videoPath,
                            title: 'Database System Chapter Two',
                          ),
                        ),
                      );
                    },
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
