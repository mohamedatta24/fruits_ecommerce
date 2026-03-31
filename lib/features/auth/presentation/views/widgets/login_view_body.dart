import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/utils/app_images.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/forgot_your_password.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/password_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/social_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            CustomTextFormField(
              hintText: "البريد الالكتروني",
              suffixIcon: Icon(Icons.email, color: Color(0xffC9CECF)),
            ),
            const SizedBox(height: 16.0),
            const PasswordField(),
            const SizedBox(height: 16.0),
            ForgotYourPassword(onTap: () {}),
            const SizedBox(height: 32.0),
            CustomButton(text: "تسجيل الدخول", onTap: () {}),
            const SizedBox(height: 16.0),
            DontHaveAnAccount(onTap: () {}),
            const SizedBox(height: 32.0),
            SocialButton(
              title: "تسجيل بواسطة جوجل",
              image: Assets.imagesSocialIconsGoogle,
              onTap: () {},
            ),
            const SizedBox(height: 16.0),
            SocialButton(
              title: "تسجيل بواسطة أبل",
              image: Assets.imagesSocialIconsApple,
              onTap: () {},
            ),
            const SizedBox(height: 16.0),
            SocialButton(
              title: "تسجيل بواسطة فيسبوك",
              image: Assets.imagesSocialIconsFacebook,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
