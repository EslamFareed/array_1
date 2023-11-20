import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "assets/images/placeholder.jpg",
            child: Image.asset(
              "assets/images/placeholder.jpg",
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          const Text("Sub Title")
        ],
      ),
    );
  }
}
