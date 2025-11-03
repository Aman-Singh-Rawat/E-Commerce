import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  final bool showAndRemoveButtons;

  const CartItems({super.key, this.showAndRemoveButtons = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, __) => Column(
        children: [
          CartItem(),

          if (showAndRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          /// Add Remove Button Row with total Price
          if (showAndRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra Space
                    const SizedBox(width: 70),

                    /// Add Remove Buttons
                    ProductQuantityWithAddRemove(),
                  ],
                ),
                ProductPriceText(price: "256"),
              ],
            ),
        ],
      ),
    );
  }
}
