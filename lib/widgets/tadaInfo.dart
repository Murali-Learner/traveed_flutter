import 'package:flutter/material.dart';

class TadaInfo extends StatelessWidget {
  const TadaInfo({
    Key? key,
    required double height,
    required double width,
    required String imgName,
    required String name,
    required String description,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "images/blueCircle.png",
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
            SizedBox(
              height: _height * 0.003,
              width: _width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tada",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text("22 September 2021"),
              ],
            ),
          ],
        ),
        SizedBox(height: _height * 0.005),
        Text(
          "Would definiteley watch it!",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Text("2"),
            SizedBox(width: _width * 0.04),
            Text(
              "reply",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
