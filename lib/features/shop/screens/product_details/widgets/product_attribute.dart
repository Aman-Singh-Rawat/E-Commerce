import 'package:e_commerce/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// Selected Attribute Pricing & Description
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const SectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleWidget(
                            title: "Price",
                            smallSize: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Sale Price
                          const ProductPriceText(price: "20"),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const ProductTitleWidget(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const ProductTitleWidget(
                title:
                    "This is the Description of the Product and it can go up to max 4 lines",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Colors"),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: "Green",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Green",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Blue",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Purple",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: "EU 34",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "EU 32",
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "EU 36",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "EU 38",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
