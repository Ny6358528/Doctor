import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_donot_have_account.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_forget_password.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_login_button.dart';
import 'package:doctor_app/featured/login/ui/widget/custom_term_and_conditions_text.dart';
import 'package:doctor_app/featured/login/ui/widget/email_and_password.dart';
import 'package:doctor_app/featured/login/ui/widget/login_bloc_listener.dart';
import 'package:flutter/material.dart';

class LoginBodyScreen extends StatefulWidget {
  const LoginBodyScreen({super.key});

  @override
  State<LoginBodyScreen> createState() => _LoginBodyScreenState();
}

class _LoginBodyScreenState extends State<LoginBodyScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Title
                Text(
                  "Welcome Back 👋",
                  style: AppTextStyles.text24BlueBold(),
                ),

                Spacing.verticalSpacing(8),

                /// Subtitle
                Text(
                  "We’re excited to have you back, "
                  "can’t wait to see what you’ve been up to.",
                  style: AppTextStyles.text14grey(),
                ),

                Spacing.verticalSpacing(30),

                /// Form
              
EmailAndPassword(),
                /// Forgot password
                CustomForgetPassword(),

                Spacing.verticalSpacing(20),

                /// Login Button
                CustomLoginButton(),

                Spacing.verticalSpacing(20),

                /// Terms
           CustomTermaAndConditionsText(),

                Spacing.verticalSpacing(16),

                /// Sign up
                CustomDonotHaveAccount(),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
