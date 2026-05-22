import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:doctor_app/featured/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({super.key});

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          if (context.read<LoginCubit>().formKey.currentState!.validate()) {
            context.read<LoginCubit>().emitLoginState();
            // login logic
          }
        },
        child: Text("Login", style: AppTextStyles.text16White()),
      ),
    );
  }
}
