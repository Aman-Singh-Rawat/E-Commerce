
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  const BrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign,
    required this.brandTextSize,
  });

  TextStyle titleStyle(BuildContext context) {
    return switch (brandTextSize) {
      TextSizes.small => Theme.of(
        context,
      ).textTheme.labelMedium!.apply(color: color),
      TextSizes.medium => Theme.of(
        context,
      ).textTheme.bodyLarge!.apply(color: color),
      TextSizes.large => Theme.of(
        context,
      ).textTheme.titleLarge!.apply(color: color),
      _ => Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      title,

      textAlign: textAlign,

      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: titleStyle(context),
    );
  }
}
