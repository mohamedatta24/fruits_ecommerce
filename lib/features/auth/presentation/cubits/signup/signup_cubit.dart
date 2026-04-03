import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/features/auth/domain/repositories/auth_repos.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepos) : super(SignupInitial());
  final AuthRepos authRepos;

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignupLoading());
    final result = await authRepos.createUserWithEmailAndPassword(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SignupFailure(failure.message)),
      (user) => emit(SignupSuccess()),
    );
  }
}
