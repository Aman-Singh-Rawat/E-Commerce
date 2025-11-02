import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.tProfileImage),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),

                Text("John Doe", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        const SizedBox(width: TSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const RatingIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          "The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Greate job!",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: " show less",
          trimCollapsedText: " show more",
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.grey,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.grey,
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review
        RoundedContainer(
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  "The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Greate job!",
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: " show less",
                  trimCollapsedText: " show more",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.grey,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}
