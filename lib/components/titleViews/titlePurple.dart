import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

class TitlePurple extends StatefulWidget {
  final String title;

  TitlePurple({required this.title});

  @override
  _TitlePurple createState() => _TitlePurple();
}

class _TitlePurple extends State<TitlePurple> {
  @override
  Widget build(BuildContext context) {
    return InnerShadow(
      shadows: const [
        Shadow(
          blurRadius: 8,
          color: Color.fromRGBO(1, 15, 32, 0.8),
          offset: Offset(0, 4),
        ),
      ],
      child: Container(
        height: 50,
        // padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        decoration:
            const BoxDecoration(color: Color.fromRGBO(91, 67, 214, 1), boxShadow: [
          BoxShadow(
            // color: Color.fromRGBO(1, 15, 32, 0.8),
            // spreadRadius: -2.0,
            blurRadius: 10.0,
          )
        ]),
        child: Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
