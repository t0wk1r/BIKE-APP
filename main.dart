// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIKE APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BIKE APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'images/bikea.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'images/bikeb.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'images/bikec.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'images/biked.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
