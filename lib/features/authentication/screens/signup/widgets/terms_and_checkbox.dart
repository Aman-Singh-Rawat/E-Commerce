import 'dart:ui';

import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_checkbox.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TermsAndCheckbox extends StatelessWidget {
  const TermsAndCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),

        const SizedBox(width: TSizes.spaceBtwItems),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
              TextSpan(text: ' ${TTexts.and} '),
              TextSpan(
                text: ' ${TTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
