import 'package:flutter/material.dart';

class CommentFeild extends StatelessWidget {
  const CommentFeild({
    Key? key,
    required double height,
    required TextEditingController commentController,
  })  : _height = height,
        _commentController = commentController,
        super(key: key);

  final double _height;
  final TextEditingController _commentController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // color: Colors.black,
      padding: EdgeInsets.only(
          top: _height * 0.003, bottom: _height * 0.001, right: 0, left: 3),
      child: TextField(
        controller: _commentController,
        decoration: InputDecoration(
            hintText: "Add a comment  ", border: InputBorder.none),
      ),
    );
  }
}
