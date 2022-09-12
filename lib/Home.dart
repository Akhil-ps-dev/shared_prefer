import 'package:counter_app/Home2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textcontroller,
            ),
            ElevatedButton(
                onPressed: () {
                  buttonclicked();
                },
                child: Text("save")),
          ],
        ),
      ),
    );
  }

  Future<void> buttonclicked() async {
    //shared preferences
    print(_textcontroller.text);
    final sharedprefer = await SharedPreferences.getInstance();

    sharedprefer.setString('shared_prefer', _textcontroller.text);
  }

  Future<void> getSavedData(BuildContext ctx) async {
    //shared preferences
    final sharedprefer = await SharedPreferences.getInstance();
    final savedvalue = sharedprefer.getString('shared_prefer');
    if (savedvalue != null) {
      Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => Home2()));
    }
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
