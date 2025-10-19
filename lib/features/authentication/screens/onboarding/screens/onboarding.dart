import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utils.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.tOnBoardingImage1,
                title: TTexts.tOnBoardingTitle1,
                subtitle: TTexts.tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage2,
                title: TTexts.tOnBoardingTitle2,
                subtitle: TTexts.tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage3,
                title: TTexts.tOnBoardingTitle3,
                subtitle: TTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),

          /// SKIP BUTTON
          Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSizes.defaultSpace,
            child: TextButton(
              onPressed: controller.skipPage,
              child: const Text("Skip"),
            ),
          ),

          /// Dot Navigation SmoothPageIndicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              onDotClicked: controller.dotNavigationClick,
              effect: ExpandingDotsEffect(
                activeDotColor: isDark ? TColors.lightBackground : TColors.dark,
                dotHeight: 6,
              ),
            ),
          ),

          /// Circular Button
          Positioned(
            right: TSizes.defaultSpace,
            bottom: TDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: controller.nextPage,

              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: isDark ? TColors.primary : Colors.black,
              ),
              child: Icon(Iconsax.arrow_right_3),
            ),
          ),
        ],
      ),
    );
  }
}
