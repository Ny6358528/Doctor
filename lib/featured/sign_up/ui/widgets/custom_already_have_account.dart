import 'package:doctor_app/core/routing/routing_name.dart';
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAlreadyHaveAccount
    extends StatelessWidget {
  const CustomAlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: "Already have an account? ",
          style: AppTextStyles.text14grey(),

          children: [
            TextSpan(
              text: "Login",

              style:
                  AppTextStyles
                      .text14Blue(),

              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.go(
                        RoutingName
                            .kLoginScreen,
                      );
                    },
            ),
          ],
        ),
      ),
    );
  }
}