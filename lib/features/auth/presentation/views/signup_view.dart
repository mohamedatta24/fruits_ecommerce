import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/core/services/dependency_injection.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupCubit>(),
      child: Scaffold(
        appBar: buildAppBar(context, title: "إنشاء حساب"),
        body: const SafeArea(child: SignupViewBodyBlocConsumer()),
      ),
    );
  }
}
