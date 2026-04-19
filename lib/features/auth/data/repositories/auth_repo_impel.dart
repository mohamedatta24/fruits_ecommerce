import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce/core/errors/custom_exception.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/core/services/database_service.dart';
import 'package:fruits_ecommerce/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce/core/utils/backend_endpoints.dart';
import 'package:fruits_ecommerce/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_ecommerce/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpel implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpel({
    required this.firebaseAuthService,
    required this.databaseService,
  });

  // createUserWithEmailAndPassword-----------------------------------------------------------
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email,
        password,
      );
      var userEntity = UserEntity(uid: user.uid, name: name, email: email);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.message.toString()));
    } catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.toString()));
    }
  }

  // loginWithEmailAndPassword-----------------------------------------------------------
  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await firebaseAuthService.loginWithEmailAndPassword(
        email,
        password,
      );
      var userEntity = await getUserData(uid: user.uid);
      return Right(userEntity);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message.toString()));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // signInWithGoogle-----------------------------------------------------------
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.message.toString()));
    } catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.toString()));
    }
  }

  // signInWithFacebook-----------------------------------------------------------
  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.message.toString()));
    } catch (e) {
      await deleteUser(user);
      return Left(ServerFailure(e.toString()));
    }
  }

  // addUserData-----------------------------------------------------------
  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoints.addUserData,
      data: user.toMap(),
      documentId: user.uid,
    );
  }

  // deleteUser-----------------------------------------------------------
  @override
  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  // getUserData-----------------------------------------------------------
  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var data = await databaseService.getData(
      path: BackendEndpoints.getUserData,
      documentId: uid,
    );

    return UserModel.fromJson(data);
  }
}
