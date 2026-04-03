import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_ecommerce/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpel implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpel({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
        email,
        password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
