import 'package:flutter/material.dart';
import 'container.dart';
import 'expanded.dart';
import 'stack.dart';
import 'text.dart';
import 'button.dart';
import 'row.dart';
import 'column.dart';
import 'flexible.dart';

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
            Container(
              alignment: Alignment.center,
              child: Text(
                "Meet-2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Container"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Text"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Button"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Row"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Column"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColumnPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Stack"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Expanded"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpandedPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Flexible"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlexiblePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
