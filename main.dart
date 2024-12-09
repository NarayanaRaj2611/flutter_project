import 'package:demo/widget/form.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple, // Use primaryColor here
        ),
      ),
      home: FormWidget(),
    );
  }
}
