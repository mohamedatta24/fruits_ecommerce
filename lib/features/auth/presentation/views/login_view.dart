import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل الدخول"),
      body: const SafeArea(child: LoginViewBody()),
    );
  }
}
