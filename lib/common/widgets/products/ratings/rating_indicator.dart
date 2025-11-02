import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class RatingIndicator extends StatelessWidget {
  final double rating;
  const RatingIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: TColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: TColors.primary),
    );
  }
}
