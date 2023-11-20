import 'package:array_1/screen2.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:webview_flutter/webview_flutter.dart';

//! Play Audio
//! Play Video
//! Pdf View
//! Web View
//! Transition Animation
//! Hero Animation

//! Lottie
//! Implicit Animation
//! Explicit Animation

class Session2Flutter extends StatefulWidget {
  const Session2Flutter({super.key});

  @override
  State<Session2Flutter> createState() => _Session2FlutterState();
}

class _Session2FlutterState extends State<Session2Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
            leading: Hero(
              tag: "assets/images/placeholder.jpg",
              child: Image.asset(
                "assets/images/placeholder.jpg",
                width: 60,
                height: 40,
              ),
            ),
            title: const Text("Title"),
            subtitle: const Text("Sub Title"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}

// Route _buildRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => const Screen2(),
  //     transitionDuration: const Duration(seconds: 2),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       //! Slide Tranisiton
  //       // const begin = Offset(0, -1);
  //       // const end = Offset.zero;

  //       // var tween = Tween(begin: begin, end: end);

  //       // return SlideTransition(
  //       //   position: animation.drive(tween),
  //       //   child: child,
  //       // );

  //       //! Fade Transition
  //       // const begin = 0.0;
  //       // const end = 1.0;
  //       // var tween = Tween(begin: begin, end: end);

  //       // return FadeTransition(
  //       //   opacity: animation.drive(tween),
  //       //   child: child,
  //       // );

  //       //! Rotate Transition
  //       // const begin = 0.0;
  //       // const end = 1.0;
  //       // var tween = Tween(begin: begin, end: end);
  //       // return RotationTransition(
  //       //   turns: animation.drive(tween),
  //       //   child: child,
  //       // );

  //       //! Scale Transition
  //       //! Size Transition
  //     },
  //   );
  // }

// late WebViewController controller;

  // @override
  // void initState() {
  //   controller = WebViewController()
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setBackgroundColor(const Color(0x00000000))
  //     ..setNavigationDelegate(
  //       NavigationDelegate(
  //         onProgress: (int progress) {
  //           // Update loading bar.
  //         },
  //         onPageStarted: (String url) {},
  //         onPageFinished: (String url) {},
  //         onWebResourceError: (WebResourceError error) {},
  //         onNavigationRequest: (NavigationRequest request) {
  //           if (request.url.startsWith('https://www.youtube.com/')) {
  //             return NavigationDecision.prevent;
  //           }
  //           return NavigationDecision.navigate;
  //         },
  //       ),
  //     )
  //     ..loadRequest(Uri.parse('https://flutter.dev'));
  //   super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: WebViewWidget(controller: controller),
  //   );
  // }

 // body: SfPdfViewer.network(
      //   "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
      // ),


 // late VideoPlayerController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.networkUrl(
  //     Uri.parse(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  //     ),
  //   )..initialize().then(
  //       (_) {
  //         setState(() {});
  //       },
  //     );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: _controller.value.isInitialized
  //           ? AspectRatio(
  //               aspectRatio: _controller.value.aspectRatio,
  //               child: VideoPlayer(_controller),
  //             )
  //           : const CircularProgressIndicator(),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         if (_controller.value.isPlaying) {
  //           _controller.pause();
  //         } else {
  //           _controller.play();
  //         }
  //         setState(() {});
  //       },
  //       child:
  //           Icon(_controller.value.isPlaying ? Icons.stop : Icons.play_arrow),
  //     ),
  //   );
  // }


// body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       AssetsAudioPlayer.newPlayer().open(
      //         Audio("assets/sounds/music_file.mp3"),
      //         autoStart: false,
      //         showNotification: true,
      //       );
      //     },
      //     child: Text("Play audio"),
      //   ),
      // ),