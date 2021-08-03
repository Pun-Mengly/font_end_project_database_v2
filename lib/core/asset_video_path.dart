import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// class CoreVideosWidget extends StatefulWidget {
//   const CoreVideosWidget({
//     Key? key,
//     required this.title,
//     required this.path,
//   }) : super(key: key);
//
//   final String title;
//   final String path;
//
//   @override
//   State<StatefulWidget> createState() {
//     return _CoreVideosWidgetState();
//   }
// }
//
// class _CoreVideosWidgetState extends State<CoreVideosWidget> {
//   late VideoPlayerController _videoPlayerController1;
//   ChewieController? _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }
//
//   @override
//   void dispose() {
//     _videoPlayerController1.dispose();
//
//     _chewieController?.dispose();
//     super.dispose();
//   }
//
//   Future<void> initializePlayer() async {
//     _videoPlayerController1 = VideoPlayerController.network(widget.path);
//     await Future.wait([
//       _videoPlayerController1.initialize(),
//     ]);
//     _createChewieController();
//     setState(() {});
//   }
//
//   void _createChewieController() {
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController1,
//       autoPlay: true,
//       looping: true,
//       subtitleBuilder: (context, dynamic subtitle) => Container(
//         padding: const EdgeInsets.all(10.0),
//         child: subtitle is InlineSpan
//             ? RichText(
//                 text: subtitle,
//               )
//             : Text(
//                 subtitle.toString(),
//                 style: const TextStyle(color: Colors.black),
//               ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(widget.title),
//         //   backgroundColor: Colors.indigo,
//         // ),
//         body: SizedBox(
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   color: Colors.black,
//                   child: Center(
//                     child: _chewieController != null &&
//                             _chewieController!
//                                 .videoPlayerController.value.isInitialized
//                         ? Chewie(
//                             controller: _chewieController!,
//                           )
//                         : Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               CircularProgressIndicator(),
//                               SizedBox(height: 20),
//                               Text('Loading'),
//                             ],
//                           ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//

class VideoApp extends StatefulWidget {
  final String path;

  const VideoApp({Key? key, required this.path}) : super(key: key);
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.path)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
