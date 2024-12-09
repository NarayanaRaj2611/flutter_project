import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop_Down List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton(
                  items: <String>[
                'orange',
                'apple',
                'mango',
                'watermelon',
                'banana'
              ].map<DropdownMenuItem<String>>(String value){
                    return DropDownmenItem <String>(
                    value: value,
              child:Text(selectedvalue)
                    );
              }),
            )
          ].toList(),
        ),
      ),
    );
  }
}
