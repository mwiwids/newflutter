import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("SFA Meet 2 - Text")),
          body: const Center(
            child: TypographyDemo(),
          ),
        ));
  }
}

class TypographyDemo extends StatelessWidget {
  const TypographyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final styleItems = [
      Text(
        'Headline2',
        style: textTheme.headline2?.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            // decoration: TextDecoration.lineThrough,
            // decoration: TextDecoration.underline,
            decoration: TextDecoration.combine(
                [TextDecoration.lineThrough, TextDecoration.underline])),
      ),
      // headline1, headline2,.. headline6
      // subtitle1, subtitle2
      // bodyText1, bodyText2
      // button, caption, overline
      Text(
          List.generate(10, (index) => 'Lorem ipsum dolor si amet').join(' - '),
          // style: textTheme.subtitle1,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontFamily: 'TegakBersambung',
            fontSize: 24,
          )),
      RichText(
        softWrap: true,
        textAlign: TextAlign.justify,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'SISI',
              style: TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: ' Flutter ',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(
              text: 'Academy ',
              style: TextStyle(color: Colors.blue),
            ),
            TextSpan(
              text: List.generate(3, (index) => 'Lorem ipsum').join(' - '),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: RichText(
          softWrap: true,
          // maxLines: 1,
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'SISI',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: ' Flutter ',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'Academy ',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: List.generate(3, (index) => 'Lorem ipsum dolor si amet')
                    .join(' '),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      RichText(
        text: TextSpan(children: [
          TextSpan(text: '9:30 - 2:30', style: TextStyle(color: Colors.black)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -6),
              child: Text(
                '+2',
                //superscript is usually smaller in size
                textScaleFactor: 0.7,
                style: TextStyle(color: Colors.red),
              ),
            ),
          )
        ]),
      ),
      RichText(
        text: TextSpan(children: [
          TextSpan(text: '9:30 - 2:30', style: TextStyle(color: Colors.black)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, 0),
              child: Text(
                '+2',
                //superscript is usually smaller in size
                textScaleFactor: 0.7,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ]),
      )
    ];
    return ListView(children: styleItems);
  }
}
