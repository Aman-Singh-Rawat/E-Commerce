import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  final bool selectedAddress;
  const SingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
          ? TColors.darkerGrey
          : TColors.grey,

      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? isDark
                        ? TColors.light
                        : TColors.dark
                  : null,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhone Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: TSizes.sm / 2),

              Text(
                "(+123) 456 7890",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: TSizes.sm / 2),

              const Text(
                "82356 Timmy Coves, South Liana, Maine , 87665, USA",
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
