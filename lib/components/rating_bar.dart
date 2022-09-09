import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarCustom extends StatelessWidget {
  const RatingBarCustom({Key? key, required this.star}) : super(key: key);

  final double star;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemSize: 20,
      initialRating: star,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        half: const Icon(
          Icons.star_half,
          color: Colors.amber,
        ),
        empty: const Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
      ),
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
    ;
  }
}
