import 'package:flutter/material.dart';

class SnackbarDemo extends StatelessWidget {
  const SnackbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('This is a snack bar'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
