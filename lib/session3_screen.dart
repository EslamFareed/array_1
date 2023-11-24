import 'package:array_1/shared_helper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

//! Shared Prefereneces - Local Database
//! Apis
//! Lottie
//! Implicit Animation

//Todo Explicit Animation

class Session3Screen extends StatefulWidget {
  const Session3Screen({super.key});

  @override
  State<Session3Screen> createState() => _Session3ScreenState();
}

class _Session3ScreenState extends State<Session3Screen> {
  final controller = TextEditingController();

  // double width = 100;
  // double height = 100;
  // Color color = Colors.black;
  // double radius = 6;

  // double opacity = 1.0;

  CrossFadeState crossFadeState = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Session 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.asset(
            //   "assets/animation/loading_animation.json",
            //   width: 100,
            //   height: 100,
            //   // repeat: false,
            //   // reverse: true,
            // ),
            //! Implicit Animation
            // AnimatedContainer(
            //   duration: Duration(seconds: 2),
            //   width: width,
            //   height: height,
            //   decoration: BoxDecoration(
            //     color: color,
            //     borderRadius: BorderRadius.circular(radius),
            //   ),
            // ),
            // AnimatedOpacity(
            //   opacity: opacity,
            //   duration: Duration(seconds: 2),
            //   child: ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           opacity = 0.0;
            //         });
            //       },
            //       child: const Text("hide")),
            // ),
            // AnimatedCrossFade(
            //   firstChild: SizedBox(
            //     width: 100,
            //     child: MaterialButton(
            //       onPressed: () {
            //         setState(() {
            //           crossFadeState = CrossFadeState.showSecond;
            //         });
            //       },
            //       color: Colors.deepOrange,
            //       child: const Text("Login"),
            //     ),
            //   ),
            //   secondChild: const SizedBox(
            //     width: 100,
            //     child: Icon(
            //       Icons.check,
            //       color: Colors.green,
            //       size: 50,
            //     ),
            //   ),
            //   crossFadeState: crossFadeState,
            //   duration: Duration(seconds: 3),
            // ),
            // AnimatedSize(
            //   duration: Duration(seconds: 2),
            //   child: Text("Hello World"),
            // ),

            ElevatedButton(
              onPressed: () {
                // setState(() {
                //   width = 150;
                //   height = 250;
                //   color = Colors.red;
                //   radius = 50;
                // });
              },
              child: const Text("Start Animation"),
            ),
            // TextField(
            //   controller: controller,
            //   decoration: const InputDecoration(
            //     labelText: "Value to Save",
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     // var prefs = await SharedPreferences.getInstance();

            //     await SharedHelper.prefs.setString('name', controller.text);
            //   },
            //   child: const Text("Save"),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     // var prefs = await SharedPreferences.getInstance();
            //     print(SharedHelper.prefs.getString("name"));
            //   },
            //   child: const Text("Get"),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     // var prefs = await SharedPreferences.getInstance();
            //     await SharedHelper.prefs.remove('name');
            //     print(SharedHelper.prefs.getString("name") ?? "Not Found");
            //   },
            //   child: const Text("Remove"),
            // ),
          ],
        ),
      ),
    );
  }
}
