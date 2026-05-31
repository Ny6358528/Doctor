import 'package:flutter/material.dart';
import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_donot_have_account.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_forget_password.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_login_button.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_term_and_conditions_text.dart';
import 'package:doctor_app/featured/login/ui/widget/email_and_password.dart';
import 'package:doctor_app/featured/login/ui/widget/login_bloc_listener.dart';

class LoginBodyScreen extends StatelessWidget {
  const LoginBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginBlocListener(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back 👋",
                    style: AppTextStyles.text24BlueBold(),
                  ),

                  Spacing.verticalSpacing(8),

                  Text(
                    "We’re excited to have you back, can’t wait to see what you’ve been up to.",
                    style: AppTextStyles.text14grey(),
                  ),

                  Spacing.verticalSpacing(30),

                  const EmailAndPassword(),

                  CustomForgetPassword(),

                  Spacing.verticalSpacing(20),

                  CustomLoginButton(),

                  Spacing.verticalSpacing(20),

                  CustomTermaAndConditionsText(),

                  Spacing.verticalSpacing(16),

                  CustomDonotHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}