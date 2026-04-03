import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });
}
