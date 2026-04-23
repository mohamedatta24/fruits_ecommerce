import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/core/services/dependency_injection.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
        appBar: buildAppBar(context, title: "تسجيل الدخول"),
        body: SafeArea(child: const LoginViewBodyBlocConsumer()),
      ),
    );
  }
}


