import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Stack'),
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      overflow: Overflow.visible,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.yellow,
          ),
          height: 150,
          width: double.infinity,
        ),
        Positioned(
          bottom: -40,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.orange,
            ),
            margin: EdgeInsets.all(8),
            height: 70,
            width: MediaQuery.of(context).size.width - 100,
          ),
        ),
        Positioned(
          bottom: -55,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            margin: EdgeInsets.all(8),
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
