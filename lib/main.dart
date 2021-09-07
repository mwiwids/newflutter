import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SFA Meet 02 - Raised Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContohRaisedButton(),
    );
  }
}

class ContohRaisedButton extends StatefulWidget {
  const ContohRaisedButton({Key? key}) : super(key: key);

  @override
  _ContohRaisedButtonState createState() => _ContohRaisedButtonState();
}

class _ContohRaisedButtonState extends State<ContohRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Raised Button"),
      ),
      body: Column(
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
          )
        ],
      ),
    );
  }
}
