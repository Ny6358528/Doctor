import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/featured/sign_up/ui/widgets/custom_already_have_account.dart';
import 'package:doctor_app/featured/sign_up/ui/widgets/custom_signup_button.dart';
import 'package:doctor_app/featured/sign_up/ui/widgets/sign_form.dart';
import 'package:doctor_app/featured/sign_up/ui/widgets/signupbloclistene.dart';

import 'package:flutter/material.dart';

class SignupBodyScreen extends StatefulWidget {
  const SignupBodyScreen({super.key});

  @override
  State<SignupBodyScreen> createState() =>
      _SignupBodyScreenState();
}

class _SignupBodyScreenState
    extends State<SignupBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return SignupBlocListener(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [
                  /// TITLE
                  Text(
                    "Create Account 👋",
                    style:
                        AppTextStyles
                            .text24BlueBold(),
                  ),

                  Spacing.verticalSpacing(8),

                  /// SUBTITLE
                  Text(
                    "Join us now and start your journey with us.",
                    style:
                        AppTextStyles
                            .text14grey(),
                  ),

                  Spacing.verticalSpacing(30),

                  /// SIGNUP FORM
                  const SignupForm(),

                  Spacing.verticalSpacing(20),

                  /// SIGNUP BUTTON
                  const CustomSignupButton(),

                  Spacing.verticalSpacing(20),

                  /// ALREADY HAVE ACCOUNT
                  const CustomAlreadyHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}