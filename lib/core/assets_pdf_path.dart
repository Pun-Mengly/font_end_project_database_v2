import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class AssetPdfPath extends StatefulWidget {
  final String pdfPath;

  const AssetPdfPath({Key? key, required this.pdfPath}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<AssetPdfPath> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  _HomePage();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SfPdfViewer.asset(widget.pdfPath, key: _pdfViewerKey),
        ),
      ),
    );
  }
}
