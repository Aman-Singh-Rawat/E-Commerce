import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double radius;
  final bool showBorder;
  final Color borderColor;

  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;

  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
    this.backgroundColor = TColors.white,
    this.radius = TSizes.cardRadiusLg,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
