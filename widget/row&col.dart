import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows And Colum'),
      ),
      body: Container(
        height: 200,
        width: 100,
        color: Colors.purple,
        child: Column(
          // direction: Axis.vertical,
          // alignment: WrapAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Text('dsfnljdsnfljnsdlfndlfngsdfsdfgdfsgsdfgdfgfd')

            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.brown,
            )
          ],
        ),
      ),
    );
  }
}
