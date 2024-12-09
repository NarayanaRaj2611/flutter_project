import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.camera_alt, size: 40, color: Colors.red),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.edit, size: 15, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Cluster",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Store Name: BLR - WAREHOUSE",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            SizedBox(height: 20),
            const Card(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.red),
                title: Text("Cluster"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.red),
                title: Text("cluster@kushals.com"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                // Reset password action
              },
              child: Text("Reset Password"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                // Logout action
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Task",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}
