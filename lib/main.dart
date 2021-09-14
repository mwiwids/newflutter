import 'package:flutter/material.dart';
import './text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        child: ElevatedButton(
          child: Text("SFA Meet 2 - Text"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LinePage()),
            );
          },
        ),
      ),
    );
  }
}
