import 'package:flutter/material.dart';
import './button.dart';
import './text.dart';
import './container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SISI Flutter Academy',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SISI Flutter Academy'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ElevatedButton(
              child: Text("SFA Meet 2 - Container"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("SFA Meet 2 - Text"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("SFA Meet 2 - Button"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
