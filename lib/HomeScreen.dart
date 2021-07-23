import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent[100]])),
          accountName: Text(
            "Tanmay Patel",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          accountEmail: Text("trp@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1491743715344-d5eed2a9c5bd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        ListTile(
          title: Text(
            "Account",
            style: TextStyle(fontSize: 16),
          ),
          trailing: Icon(Icons.edit),
          leading: Icon(
            Icons.person,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            "Notification",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            Icons.notifications,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            "Location",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            Icons.location_on,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            "Event",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            Icons.event,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            "Hangouts",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            Icons.chat,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            "Setting",
            style: TextStyle(fontSize: 16),
          ),
          leading: Icon(
            Icons.settings,
            size: 30,
          ),
        ),
      ])),
      bottomNavigationBar: CurvedNavigationBar(items: <Widget>[
        Icon(
          Icons.home,
          size: 20,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.chat,
          size: 20,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.add_circle,
          size: 20,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.call,
          size: 20,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.person,
          size: 20,
          color: Colors.blueAccent,
        ),
      ]),
    );
  }
}
