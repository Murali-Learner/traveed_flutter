import 'package:flutter/material.dart';

class LiamInfo extends StatelessWidget {
  const LiamInfo({
    Key? key,
    required double height,
    required double width,
    required String imgName,
    required String name,
    required String description,
  })  : _height = height,
        _width = width,
        _imgName = imgName,
        _name = name,
        _description = description;

  final double _height;
  final double _width;
  final String _imgName;
  final String _name;
  final String _description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  _imgName,
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: _width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _name,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text("22 September 2021"),
                  ],
                ),
              ],
            ),
            SizedBox(height: _height * 0.004),
            Text(
              _description,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
                SizedBox(width: _width * 0.04),
                Text(
                  "reply",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
