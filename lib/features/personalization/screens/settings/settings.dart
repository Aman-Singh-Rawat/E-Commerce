import 'package:e_commerce/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_commerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/address/user_address_screen.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppbar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),

                  /// User Profile Card
                  UserProfileTile(),

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subtitle: "Set Shopping delivery address",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add remove products and move to checkout",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In-progress and completed Orders",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "List of all the discounted coupens",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subtitle: "Set any kind of notification message",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: "Manage data usage and connected accounts",
                  ),

                  /// App Settings
                  SizedBox(height: TSizes.spaceBtwSections),

                  SectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subtitle: "Upload Data to your Cloud Firebase",
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subtitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Logout"),
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
