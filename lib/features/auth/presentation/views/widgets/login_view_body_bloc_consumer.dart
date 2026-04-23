import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/core/widgets/custom_loading_indicator.dart';
import 'package:fruits_ecommerce/core/widgets/custom_snack_bar_message.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/home_view.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeView();
              },
            ),
          );
        } else if (state is LoginFailure) {
          buildSnackBarMessage(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is LoginLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
