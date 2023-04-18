import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice_translation_page/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is First Screen'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SecondScreen(
                      screenData: 'Data from FirstScreen',
                    ),
                  ),
                );
              },
              child: const Text('Go to Second Screen'))
        ],
      )),
    );
  }
}
