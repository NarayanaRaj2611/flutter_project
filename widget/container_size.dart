import 'package:flutter/material.dart';

// ignore: camel_case_types
class container_size extends StatelessWidget {
  const container_size({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('container and size box'),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Text(
            textAlign: TextAlign.center,
            'hello',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
