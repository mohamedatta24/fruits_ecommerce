import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("تم إنشاء الحساب بنجاح")));
        } else if (state is SignupFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        if (state is SignupLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return SignupViewBody();
      },
    );
  }
}
