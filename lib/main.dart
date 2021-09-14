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
      home: ContohIconButton(),
    );
  }
}

class ContohIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Button"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.work),
          onPressed: () {
            print("Sudah klik Icon Button");
          },
        ),
      ),
    );
  }
}

