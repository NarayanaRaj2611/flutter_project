import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('show alert')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // backgroundColor: Colors.white,
        // elevation: 10,
        // scrollable: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Approve',
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text(
              'cancel',
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
