import 'package:demo/widget/row&col.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet.dart';
import 'button.dart';
import 'drawer.dart';

class BottomNav_bar extends StatefulWidget {
  const BottomNav_bar({super.key});

  @override
  State<BottomNav_bar> createState() => _BottomNav_barState();
}

class _BottomNav_barState extends State<BottomNav_bar> {
  int selectedindex = 0;
  // List<Widget> widget = [
  //   Text('Home'),
  //   Text('search'),
  //   Text('profile'),
  //   Text('add'),
  // ];
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Nav Bar'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          BottomSheetWidget(),
          DrawerWidget(),
          buttonWidget(),
          RowsCols()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        onTap: onTapped,
      ),
    );
  }
}
