import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Expanded addKey(int n, int col) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          Audio.load('assets/note$n.wav')
            ..play()
            ..dispose();
        },
        color: Color(col),
        child: SizedBox(
          width: double.infinity,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            addKey(1, 0xfffd4643),
            addKey(2, 0xffff9d43),
            addKey(3, 0xfffeff50),
            addKey(4, 0xffb4d950),
            addKey(5, 0xff82d085),
            addKey(6, 0xffc2e4fd),
            addKey(7, 0xff5981e5),
          ],
        )
      ),
    );
  }
}
