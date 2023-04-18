import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.screenData});

  final String screenData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('screenData: ' + screenData),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go to First Screen'))
        ],
      )),
    );
  }
}
