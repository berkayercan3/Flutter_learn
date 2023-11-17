import 'package:flutter/material.dart';

class DemoOne extends StatelessWidget {
  const DemoOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "Welcome!",
              // textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          )),
      //body:
    );
  }
}