import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body()),
    );
  }

  Widget body() {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: Colors.cyan,
      child: const Text(
        "X",
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
