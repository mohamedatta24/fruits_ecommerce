import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce/core/errors/custom_exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      return credential.user!;
    } on FirebaseAuthException catch (e) {
    log('FirebaseAuthException: ${e.code} - ${e.message}');
      if (e.code == 'weak-password') {
        throw CustomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('The account already exists for that email.');
      } else {
        throw CustomException('An unexpected error occurred');
      }
    } catch (e) {
      throw CustomException('An unexpected error occurred');
    }
  }
}
