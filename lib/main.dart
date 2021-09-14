import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PT SISI",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ContohInkWell(),
    );
  }
}

class ContohInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Ink Well"),
      ),
      body: Center(
        child: InkWell(
            child: Text("Ini InkWell"),
            onTap: () {
              print("Saya sudah klik InkWell");
            }),
      ),
    );
  }
}
