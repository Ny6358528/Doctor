import 'package:doctor_app/core/helper/app_regex.dart';
import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/featured/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/featured/login/ui/widget/password_validator.dart';
import 'package:doctor_app/featured/login/ui/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isPasswordVisible = false;

  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  bool hasNumber = false;

  late final TextEditingController passwordController;
  late final TextEditingController emailController;

  @override
  void initState() {
    super.initState();

    final cubit = context.read<LoginCubit>();

    passwordController = cubit.passwordController;
    emailController = cubit.emailController;

    setupPasswordListener();
  }

  void setupPasswordListener() {
    passwordController.addListener(() {
      setState(() {
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Email",
            suffixIcon: const Icon(Icons.email_outlined),
            controller: cubit.emailController,
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return "Please Enter a Valid Email";
              }
              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          CustomTextFormField(
            hintText: "Password",
            obscureText: !isPasswordVisible,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              icon: Icon(
                isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
            ),
            controller: cubit.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter a Valid Password";
              }
              if (!AppRegex.isPasswordValid(value)) {
                return "Password is too weak";
              }
              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          PasswordValidator(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
          ),
        ],
      ),
    );
  }
}