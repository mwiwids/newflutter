import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Expanded'),
      ),
      body: ExpandedDemo(),
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              height: 70,
              width: 70,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(8),
              height: 70,
              width: 70,
            ),
          ],
        ),
        // membagi dengan menggunakan flex
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.red,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
                child: Center(
                  child: Text(
                    "flex = 3",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(8),
                height: 70,
                width: 70,
                child: Center(
                  child: Text(
                    "flex = 2",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
