import 'package:flutter/material.dart';

class RoyInfo extends StatelessWidget {
  const RoyInfo({
    Key? key,
    required double height,
    required double width,
    required String name,
    required String icon,
  })  : _height = height,
        _width = width,
        _icon = icon,
        _name = name,
        super(key: key);

  final double _height;
  final double _width;
  final String _name;
  final String _icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          _icon,
          fit: BoxFit.cover,
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: _height * 0.003,
          width: _width * 0.03,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("22 September 2021"),
          ],
        ),
        SizedBox(
          width: _width * 0.33,
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        )
      ],
    );
  }
}
