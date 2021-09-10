import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PT SISI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohFlatButton(),
    );
  }
}

class ContohFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Flat Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              child: Text("Ini Flat Button"),
              color: Colors.red,
              onPressed: () {
                print("Sudah klik Flat Button");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          )
        ],
      ),
    );
  }
}

