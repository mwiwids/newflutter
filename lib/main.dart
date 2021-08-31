import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("SFA Meet 2 - Container")),
          body: const Center(
            child: ContainerDemo(),
          ),
        ));
  }
}

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    var _listContainer = [
      // without height it is unseen
      Container(), //white
      Container(color: Colors.red),
      // container is seen, but width do nothing
      Container(color: Colors.blue, width: 100, height: 30),
      // show child only, because child block container
      Container(
        color: Colors.black,
        width: 100,
        height: 30,
        child: Container(color: Colors.green, width: 100, height: 10),
      ),
      // child inside container, padding seperti border, height child diabaikan
      Container(
        color: Colors.red,
        width: 100,
        height: 30,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Container(color: Colors.black, width: 100, height: 10),
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        // height: 10, //mempengaruhi konten child
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(color: Colors.green, width: 100, height: 10),
      ),
      // Urutan dari terluar : margin, border, padding, content
      Container(
        color: Colors.red,
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(color: Colors.green, width: 100, height: 10),
      ),
      // Rotation
      Container(
        constraints: BoxConstraints.expand(
          height:
          Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text('Flutter',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(0.1),
      ),
      Container(
        constraints: BoxConstraints.expand(
          height:
          Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.green[600],
        alignment: Alignment.center,
        child: Text('Academy',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(-(3 * 3.14 / 180)),
      ),
    ];
    return ListView(
      children: _listContainer,
      // children: _listContainer,
    );
  }
}


