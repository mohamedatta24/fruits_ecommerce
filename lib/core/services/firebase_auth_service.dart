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
}
