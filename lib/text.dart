import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SFA Meet 2 - Text'),
      ),
      body: Center(
        child: TypographyDemo(),
        //   child: ElevatedButton(
        //     child: Text('Back'),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
      ),
    );
  }
}

class TypographyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final styleItems = [
      Text("Text memiliki format : headline1 sampai headline6, "
          "subtitle1, subtitle2, bodyText1, bodyText2, "
          "button, caption dan overline. Contoh : "),
      Text(
        "Headline2",
        style: textTheme.headline2,
      ),
      Text(
        "Styled Subtitle1",
        style: textTheme.subtitle1?.copyWith(
          color: Colors.orange,
        ),
      ),
      RichText(
        softWrap: true,
        textAlign: TextAlign.justify,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Text dapat dituliskan dalam kondisi : ",
                style: TextStyle(color: Colors.grey)),
            TextSpan(
              text: "Bold, ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: "Italic, ",
              style: textTheme.bodyText1?.copyWith(
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            TextSpan(
              text: "Underline,",
              style: textTheme.bodyText1?.copyWith(
                decoration: TextDecoration.underline,
                color: Colors.blue,
              ),
            ),
            TextSpan(text: "  "),
            TextSpan(
              text: "Line Through,",
              style: textTheme.bodyText1?.copyWith(
                decoration: TextDecoration.lineThrough,
                color: Colors.orange,
              ),
            ),
            TextSpan(text: "  "),
            TextSpan(
              text: "dan Kombinasinya.",
              style: textTheme.bodyText1?.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.combine([
                  TextDecoration.lineThrough,
                  TextDecoration.underline,
                ]),
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: "Superscript dan Subscript : 10",
                style: TextStyle(color: Colors.black),
            ),
            WidgetSpan(
              child: Transform.translate(
                offset: Offset(1, -6),
                child: Text(
                  "2",
                  textScaleFactor: 0.7,
                ),
              ),
            ),
            TextSpan(
              text: " dan CO",
              style: TextStyle(color: Colors.black),
            ),
            WidgetSpan(
              child: Transform.translate(
                offset: Offset(1, 0),
                child: Text(
                  "2",
                  textScaleFactor: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Text(
          List.generate(
              20,
              (index) => 'Perulangan Text dan Margin menggunakan '
                  'Container ').join(' - '),
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontFamily: 'TegakBersambung',
            fontSize: 20,
          ),
        ),
      ),
    ];
    return ListView(children: styleItems);
  }
}
