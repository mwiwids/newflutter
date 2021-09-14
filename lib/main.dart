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
      home: ContohOutlineButton(),
    );
  }
}

class ContohOutlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Outline Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: OutlinedButton(
              child: Text("Ini Outlined Button"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                overlayColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                print("Ini contoh Outlined Button");
              },
            ),
          ),
          Center(
            child: OutlineButton(
              child: Text("Ini OutlineButton"),
              borderSide: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                print("Ini contoh Outline Button");
              },
            ),
          ),
          Center(
            child: OutlineButton.icon(
                onPressed: () {
                  print("Contoh outline button with Icon");
                },
                icon: Icon(Icons.subscript_sharp),
                label: Text("Outline Icon")),
          ),
        ],
      ),
    );
  }
}
