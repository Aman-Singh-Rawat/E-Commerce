import 'package:e_commerce/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const SectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(
                onPressed: () {},
                title: "Name",
                value: "Coding With T",
              ),

              ProfileMenu(
                onPressed: () {},
                title: "Username",
                value: "Coding_with_t",
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personla Info
              const SectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "45678",
                icon: Iconsax.copy,
              ),

              ProfileMenu(
                onPressed: () {},
                title: "E-mail",
                value: "amanrawat6767@gmail.com",
              ),

              ProfileMenu(
                onPressed: () {},
                title: "Phone Number",
                value: "+91 7618447467",
              ),

              ProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),

              ProfileMenu(
                onPressed: () {},
                title: "Date of Birth",
                value: "12 July, 2004",
              ),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
