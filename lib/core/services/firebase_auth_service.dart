import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce/core/errors/custom_exception.dart';

class FirebaseAuthService {
  // Delete user account-------------------------------------------------------------
  Future<void> deleteUser() async {
    return FirebaseAuth.instance.currentUser!.delete();
  }

  // createUserWithEmailAndPassword------------------------------------------------------------
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
        throw CustomException('كلمة المرور ضعيفة جدا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('لحساب موجود بالفعل لهذا البريد الإلكتروني.');
      } else if (e.code == "network-request-failed") {
        throw CustomException("تاكد من اتصالك بالإنترنت وحاول مرة أخرى.");
      } else {
        throw CustomException('حدث خطأ غير متوقع');
      }
    } catch (e) {
      throw CustomException('حدث خطأ غير متوقع');
    }
  }

  //loginWithEmailAndPassword------------------------------------------------------------
  Future<User> loginWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthException: ${e.code} - ${e.message}');
      if (e.code == 'user-not-found') {
        throw CustomException('لا يوجد مستخدم بهذا البريد الإلكتروني.');
      } else if (e.code == 'wrong-password' || e.code == 'invalid-credential') {
        throw CustomException('كلمة المرور غير صحيحة.');
      } else if (e.code == "network-request-failed") {
        throw CustomException("تاكد من اتصالك بالإنترنت وحاول مرة أخرى.");
      } else {
        throw CustomException('حدث خطأ غير متوقع');
      }
    } catch (e) {
      throw CustomException('حدث خطأ غير متوقع');
    }
  }

  // sign in with google-------------------------------------------------------
  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );
    return userCredential.user!;
  }

  // sign in with facebook-------------------------------------------------------
  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    // Once signed in, return the UserCredential
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    );
    return userCredential.user!;
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
