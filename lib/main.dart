import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'USER PROFILE',
            style: TextStyle(
              fontFamily: 'Cinzel',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("images/profile.jpg"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Eyob Yibabie',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'Software developer',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.purple,
                  ),
                ),
                Card(
                  color: Colors.amber,
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('0928524298'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  color: Colors.amber,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('eyobyibabie01@gmail.com'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
