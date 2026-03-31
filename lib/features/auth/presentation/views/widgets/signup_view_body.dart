import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/already_have_an_account.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/password_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24.0),
          CustomTextFormField(
            hintText: "الاسم",
            suffixIcon: Icon(Icons.person, color: Color(0xffC9CECF)),
          ),
          const SizedBox(height: 16.0),
          CustomTextFormField(
            hintText: "البريد الالكتروني",
            suffixIcon: Icon(Icons.email, color: Color(0xffC9CECF)),
          ),
          const SizedBox(height: 16.0),
          const PasswordField(),
          const SizedBox(height: 16.0),
          TermsAndConditionsWidget(onChanged: (value) {}),
          const SizedBox(height: 32.0),
          CustomButton(text: "إنشاء حساب", onTap: () {}),
          const SizedBox(height: 16.0),
          const AlreadyHaveAnAccount(),
        ],
      ),
    );
  }
}
