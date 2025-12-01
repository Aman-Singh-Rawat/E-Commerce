import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/personalization/models/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

/// TODO make TfirebaseException class

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw Exception(e);
    } on FormatException catch (e) {
      throw Exception(e);
    } on PlatformException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
