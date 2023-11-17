import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // print(MediaQuery.sizeOf(context).width);
//     // print(MediaQuery.sizeOf(context).height);

//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         // endDrawer: Drawer(),
//         drawer: Drawer(
//           width: MediaQuery.sizeOf(context).width *
//               .7, // 70 % From Full Screen Width
//           // backgroundColor: Colors.black,
//           elevation: 5,
//           // shadowColor: Colors.red,
//           // shape: RoundedRectangleBorder(
//           //   borderRadius: BorderRadius.only(
//           //     topRight: Radius.circular(50),
//           //     bottomRight: Radius.circular(50),
//           //   ),
//           // ),
//           child: Column(
//             children: [
//               // DrawerHeader(
//               //   decoration: BoxDecoration(
//               //     color: Colors.red,
//               //   ),
//               //   child: Row(
//               //     crossAxisAlignment: CrossAxisAlignment.center,
//               //     children: [
//               //       CircleAvatar(
//               //         radius: 50,
//               //       ),
//               //       Column(
//               //         children: [
//               //           Text("eslam fareed"),
//               //           Text("eslam fareed"),
//               //         ],
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           title: const Text("Home"),
//           bottom: const TabBar(
//             unselectedLabelColor: Colors.black,
//             labelColor: Colors.red,
//             indicatorColor: Colors.black,
//             // indicatorWeight: 10,
//             indicatorSize: TabBarIndicatorSize.label,
//             // indicatorPadding: EdgeInsets.all(15),
//             // dividerColor: Colors.black,
//             // padding: EdgeInsets.all(20),
//             isScrollable: true,
//             // physics: BouncingScrollPhysics(),
//             tabs: [
//               Tab(
//                 text: "Home",
//               ),
//               Tab(
//                 text: "Chats",
//               ),
//               Tab(
//                 text: "Stories",
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Screen1(),
//             Screen2(),
//             Screen3(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Screen1 extends StatelessWidget {
//   const Screen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Home")),
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   const Screen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Chats")),
//     );
//   }
// }

// class Screen3 extends StatelessWidget {
//   const Screen3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text("Stories")),
//     );
//   }
// }


 // body: const Center(
        //   child: Card(
        //     child: ListTile(
        //       title: Text("Title"),
        //       subtitle: Text("Title"),
        //       leading: Icon(Icons.category),
        //       trailing: Icon(Icons.arrow_forward_ios),
        //     ),
        //   ),
        // ),