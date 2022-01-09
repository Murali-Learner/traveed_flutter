import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({Key? key, required String about})
      : _about = about,
        super(key: key);
  final String _about;
  @override
  Widget build(BuildContext context) {
    return Text(
      _about,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
    );
  }
}
