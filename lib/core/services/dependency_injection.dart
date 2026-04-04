import 'package:fruits_ecommerce/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce/features/auth/data/repositories/auth_repo_impel.dart';
import 'package:fruits_ecommerce/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepoImpel>(
    AuthRepoImpel(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
  getIt.registerSingleton<AuthRepo>(getIt<AuthRepoImpel>());

  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepo>()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));
}
