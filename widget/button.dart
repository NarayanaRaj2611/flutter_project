import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {},
                child: Text(
                  'on press',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
