import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Button'),
      ),
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: RaisedButton(
            color: Colors.red,
            child: Text("Raised Button"),
            onPressed: () {
              print("Sudah klik Raised Button");
            },
            //Cara untuk disable :
            // onLongPress: null, -> not working, TODO : Cari cara lain
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Center(
          child: RaisedButton.icon(
            color: Colors.yellow,
            elevation: 25,
            onPressed: () {
              print("Raised Button dengan Icon");
            },
            icon: Icon(Icons.mail_outlined),
            label: Text("Raised Button dengan Icon"),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          width: double.infinity,
          child: RaisedButton(
            child: Text("Raised Button Full Width"),
            onPressed: () {
              print("Raised Button Full Width");
            },
          ),
        ),
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
        ),
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
              label: Text("Outline Button with Icon")),
        ),
        Center(
          child: IconButton(
            icon: Icon(Icons.work),
            onPressed: () {
              print("Sudah klik Icon Button");
            },
          ),
        ),
        Center(
          child: InkWell(
              child: Text("Button InkWell"),
              onTap: () {
                print("Saya sudah klik InkWell");
              }),
        ),
      ],
    );
  }
}

