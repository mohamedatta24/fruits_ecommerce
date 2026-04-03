import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/core/widgets/custom_loading_indicator.dart';
import 'package:fruits_ecommerce/core/widgets/custom_snack_bar_message.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          buildSnackBarMessage(
            context,
            "تم إنشاء الحساب بنجاح",
            backgroundColor: Color(0xff4CAF50),
          );
        } else if (state is SignupFailure) {
          buildSnackBarMessage(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is SignupLoading ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
