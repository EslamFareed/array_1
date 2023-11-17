import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var picker = ImagePicker();
  late List<CameraDescription> _cameras;

  XFile? file;

  _initCamera() async {
    _cameras = await availableCameras();

    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  late CameraController controller;
  @override
  void initState() {
    _initCamera();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  var controllerScreenShot = ScreenshotController();

  File? image;

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: controllerScreenShot,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: image == null
            ? Column(
                children: [
                  Text("Any Thing to Take screenshot"),
                ],
              )
            : Image.file(
                image!,
                width: 100,
                height: 150,
                fit: BoxFit.fill,
              ),
        // body: CameraPreview(
        //   controller,
        // ),

        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // final directory = (await getApplicationDocumentsDirectory())
            //     .path; //from path_provide package
            // String fileName = DateTime.now().microsecondsSinceEpoch.toString();

            // image = await controllerScreenShot.captureAndSave(
            //   directory,
            //   fileName: fileName,
            // );
            // var i = await controllerScreenShot.capture();
            // image = File.fromRawPath(i!);

            var i = await controllerScreenShot.captureFromWidget(Container(
                padding: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 5.0),
                  color: Colors.redAccent,
                ),
                child: Text("This is an invisible widget")));
            // image = File.fromRawPath(i);
            image = await File("image.jpg").writeAsBytes(i);
            setState(() {});

            // controller.takePicture();
          },
        ),

        // body: Center(
        //   child: Column(
        //     children: [
        //       InkWell(
        //         onTap: () async {
        //           file = await picker.pickImage(source: ImageSource.camera);
        //           setState(() {});
        //         },
        //         child: file == null
        //             ? const CircleAvatar(
        //                 radius: 70,
        //                 backgroundImage:
        //                     AssetImage("assets/images/placeholder.jpg"),
        //               )
        //             : CircleAvatar(
        //                 radius: 70,
        //                 backgroundImage: FileImage(File(file!.path)),
        //               ),
        //       ),
        //       ElevatedButton(
        //         onPressed: () async {
        //           // List<XFile> images = await picker.pickMultiImage();
        //           // print(images.length);

        //           final videoXfile = await picker.pickVideo(
        //             source: ImageSource.camera,
        //             maxDuration: const Duration(seconds: 5),
        //           );
        //         },
        //         child: const Text("Pick"),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
