import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  String title;

  NewScreen(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Color(0xFFFFC72C),
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
