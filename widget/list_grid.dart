import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruit = ['apple', 'orange', 'mango', 'banana'];
  Map fruit_person = {
    'fruit': ['orange', 'apple', 'mango', 'banana'],
    'name': ['raj', 'babu', 'hemz', 'mohan']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid view'),
        backgroundColor: Colors.red[900],
        elevation: 10,
      ),
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 50,
              mainAxisSpacing: 30,
              childAspectRatio: 2 / 3),
          children: const [
            Card(
              child: Center(
                child: Text('orange'),
              ),
            ),
            Card(
              child: Center(
                child: Text('orange'),
              ),
            ),
            Card(
              child: Center(
                child: Text('orange'),
              ),
            ),
            Card(
              child: Center(
                child: Text('orange'),
              ),
            )
          ],
        ),
      ),

      // body: ListView.builder(
      //   itemCount: fruit.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         onTap: () {
      //           Text(fruit_person['fruit'][index]);
      //         },
      //         leading: Icon(Icons.person),
      //         title: Text(fruit_person['fruit'][index]),
      //         subtitle: Text(fruit_person['name'][index]),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
