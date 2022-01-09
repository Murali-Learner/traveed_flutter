import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required double height,
  })  : _height = height,
        super(key: key);

  final double _height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height * 0.08,
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Text("Home")
            ],
          ),
          Column(
            children: [Icon(Icons.search), Text("Search")],
          ),
          Column(
            children: [
              Icon(
                Icons.person_outline_sharp,
                color: Colors.black,
              ),
              Text("Profile")
            ],
          ),
        ],
      ),
    );
  }
}
