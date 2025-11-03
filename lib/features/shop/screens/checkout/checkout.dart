import 'package:e_commerce/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/coupen_widget.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const CartItems(showAndRemoveButtons: false),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Coupen Textfield
              CoupenCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Billing Section
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: isDark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),

                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods
                    BillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: "Payment Success!",
              subtitle: "Your item will be shipped soon!",
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
