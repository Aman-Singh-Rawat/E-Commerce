
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Color backgroundColor;

  const TCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.backgroundColor = TColors.white,
    this.radius = 400,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(child: child),
    );
  }
}
