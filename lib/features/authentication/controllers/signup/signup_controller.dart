import 'package:e_commerce/common/widgets/loaders/loaders.dart';
import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/personalization/models/user_model.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/device/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// Signup
  Future<void> signup() async {
    try {
      FullScreenLoader.openLoadingDialog(
        "We are processing your information...",
        TImages.docerAnimation,
      );

      /// Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected || signupFormKey.currentState!.validate()) return;

      /// Privacy Policy Check
      if (!privacyPolicy.value) {
        Loaders.warningSnackBar(
          title: "Accept Privacy Policy",
          message:
              "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.",
        );
        return;
      }

      // Register user in the Firebase Authentication & Save user data in the Firestore
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      /// Show Success Message
      Loaders.successSnackBar(title: "Congratulations", message: "Your account ha")
    } catch (e) {
      /// Show some Generic Error to the user
      Loaders.errorSnackbar(title: "Oh Snap!", message: e.toString());
    } finally {
      /// Remove Loader
      FullScreenLoader.stopLoading();
    }
  }
}
