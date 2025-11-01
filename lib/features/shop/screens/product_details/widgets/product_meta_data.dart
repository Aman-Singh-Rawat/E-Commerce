import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// Price
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const ProductPriceText(price: "175", isLarge: true),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Title
        const ProductTitleWidget(title: "Green Nike Sports Shirt"),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const ProductTitleWidget(title: "Status"),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            CircularImage(
              image: TImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? TColors.white : TColors.black,
            ),

            BrandTitleWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
