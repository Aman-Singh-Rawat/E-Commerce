import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/screens/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();
  }

  /// Function to show Relevant Screen
  void screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull("IsFirstTime", true);

    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }

  /* ------------------------------------------- Email & Password sign-in ------------------------------------------- */

  /// [EmailAuthentication] - SignIn

  /// [EmailAuthentication] - REGISTER
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      //throw FirebaseAuthException(code: e.code).message;
    } on FirebaseException catch (e) {
      //throw FirebaseAuthException(code: e.code).message;
    } on FormatException catch (e) {
      //throw FirebaseAuthException(code: e.code).message;
    } on PlatformException catch (e) {
      //throw FirebaseAuthException(code: e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
