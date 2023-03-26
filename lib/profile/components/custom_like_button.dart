import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CustomLikeButton extends StatelessWidget {
  const CustomLikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 30,
      circleSize: 30,
      circleColor: const CircleColor(start: Colors.teal, end: Colors.teal),
      bubblesColor: const BubblesColor(
        dotPrimaryColor: Colors.teal,
        dotSecondaryColor: Colors.teal,
      ),
      likeBuilder: (bool isLiked) {
        return isLiked
            ? const Icon(
                Icons.favorite,
                color: Colors.teal,
                size: 25,
              )
            : const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 25,
              );
      },
    );
  }
}
