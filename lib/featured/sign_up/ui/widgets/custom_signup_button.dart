import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:doctor_app/featured/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignupButton
    extends StatelessWidget {
  const CustomSignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              AppColor.primaryColor,

          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
                  16,
                ),
          ),
        ),

        onPressed: () {
          if (context
              .read<SignUpCubit>()
              .formKey
              .currentState!
              .validate()) {

            context
                .read<SignUpCubit>()
                .emitSignupState();
          }
        },

        child: Text(
          "Sign Up",

          style:
              AppTextStyles.text16White(),
        ),
      ),
    );
  }
}