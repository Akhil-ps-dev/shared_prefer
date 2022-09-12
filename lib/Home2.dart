import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text("Value found"),
          ],
        ),
      ),
    );
  }
}
