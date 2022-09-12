import 'package:counter_app/Home2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (ctx, index) {
        return ListTile(
          title: Text("hey ${index}"),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => Home2(
                      title: "hey ${index} ",
                    )),
              ),
            );
          },
        );
      }),
    );
  }
}

























// class Home extends StatefulWidget {
//   Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   final _textcontroller = TextEditingController();
//   String display = 'hello';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Column(
//         children: [
//           TextField(
//             controller: _textcontroller,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Enter your name',
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 display = _textcontroller.text;
//               });
//             },
//             child: const Text('Submit'),
//           ),
//           Text(display),
//         ],
//       ),
//     ));
//   }
// }

// class Home extends StatefulWidget {
//   Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var _counter = 0;
//   void inciment() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             FloatingActionButton(onPressed: () {
//               inciment();
//             }),
//             Text(_counter.toString()),
//             FloatingActionButton(onPressed: () {
//               setState(() {
//                 _counter--;
//               });
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
