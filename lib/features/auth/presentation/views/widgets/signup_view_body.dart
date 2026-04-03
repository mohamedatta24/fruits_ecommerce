import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce/constants.dart';
import 'package:fruits_ecommerce/core/widgets/custom_button.dart';
import 'package:fruits_ecommerce/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/already_have_an_account.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_password_field.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            CustomTextFormField(
              controller: nameController,
              hintText: "الاسم",
              suffixIcon: Icon(Icons.person, color: Color(0xffC9CECF)),
            ),
            const SizedBox(height: 16.0),
            CustomTextFormField(
              controller: emailController,
              hintText: "البريد الالكتروني",
              suffixIcon: Icon(Icons.email, color: Color(0xffC9CECF)),
            ),
            const SizedBox(height: 16.0),
            CustomPasswordField(controller: passwordController),
            const SizedBox(height: 16.0),
            TermsAndConditionsWidget(
              onChanged: (value) {
                isTermsAccepted = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 32.0),
            CustomButton(
              text: "إنشاء حساب",
              onTap: () {
                if (isTermsAccepted) {
                  if (formKey.currentState!.validate()) {
                    context.read<SignupCubit>().signup(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("يرجى قبول الشروط والأحكام للمتابعة"),
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 16.0),
            const AlreadyHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
