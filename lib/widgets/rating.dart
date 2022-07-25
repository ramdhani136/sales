import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  late double rating = 1.0;
  Rating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RatingBar.builder(
        ignoreGestures: true,
        initialRating: rating,
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return const Icon(
                Icons.sentiment_very_dissatisfied,
                color: Colors.red,
              );
            case 1:
              return const Icon(
                Icons.sentiment_dissatisfied,
                color: Colors.redAccent,
              );
            case 2:
              return const Icon(
                Icons.sentiment_neutral,
                color: Colors.amber,
              );
            case 3:
              return const Icon(
                Icons.sentiment_satisfied,
                color: Colors.lightGreen,
              );
            case 4:
              return const Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.green,
              );
            default:
              return const Icon(
                Icons.sentiment_very_dissatisfied,
                color: Colors.red,
              );
          }
        },
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }
}
