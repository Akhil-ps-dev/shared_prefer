import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incriment() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _decriment() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             FloatingActionButton(
//               onPressed: () {
//                 _incriment();
//               },
//               child: const Icon(Icons.add),
//             ),
//             Text("$_counter"),
//             FloatingActionButton(
//               onPressed: () {
//                 _decriment();
//               },
//               child: const Icon(Icons.minimize),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
