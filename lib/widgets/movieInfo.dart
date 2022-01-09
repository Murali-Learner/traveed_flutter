import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required String likes, required String rating})
      : _likes = likes,
        _rating = rating,
        super(key: key);
  final String _likes;
  final String _rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(
              Icons.thumb_up_off_alt,
              color: Color.fromRGBO(108, 201, 241, 1),
            ),
            Text(_likes),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share),
            Text("Share"),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Text(_rating),
                Icon(
                  Icons.star,
                  size: 10,
                ),
              ],
            ),
            Text("Avg.Rating"),
          ],
        ),
      ],
    );
  }
}
