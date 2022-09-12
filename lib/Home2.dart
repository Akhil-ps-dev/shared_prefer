import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  final String title;
  const Home2({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Text(title)],
        ),
      ),
    );
  }
}
