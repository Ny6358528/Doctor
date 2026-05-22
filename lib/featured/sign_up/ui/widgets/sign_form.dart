import 'package:doctor_app/core/helper/app_regex.dart';
import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/featured/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/featured/login/ui/widget/password_validator.dart';
import 'package:doctor_app/featured/login/ui/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() =>
      _SignupFormState();
}

class _SignupFormState
    extends State<SignupForm> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  bool hasNumber = false;

  TextEditingController? passwordController;

  VoidCallback? passwordListener;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (passwordController != null) return;

    final cubit =
        context.read<SignUpCubit>();

    passwordController =
        cubit.passwordController;

    passwordListener = () {
      if (!mounted) return;

      setState(() {
        hasUppercase =
            AppRegex.hasUpperCase(
              passwordController!.text,
            );

        hasLowercase =
            AppRegex.hasLowerCase(
              passwordController!.text,
            );

        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(
              passwordController!.text,
            );

        hasMinLength =
            AppRegex.hasMinLength(
              passwordController!.text,
            );

        hasNumber =
            AppRegex.hasNumber(
              passwordController!.text,
            );
      });
    };

    passwordController!.addListener(
      passwordListener!,
    );
  }

  @override
  void dispose() {
    if (passwordController != null &&
        passwordListener != null) {
      passwordController!.removeListener(
        passwordListener!,
      );
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit =
        context.read<SignUpCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          /// NAME
          CustomTextFormField(
            hintText: "Full Name",
            controller:
                cubit.nameController,
            suffixIcon: const Icon(
              Icons.person_outline,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return "Please enter your name";
              }

              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          /// EMAIL
          CustomTextFormField(
            hintText: "Email",
            controller:
                cubit.emailController,
            suffixIcon: const Icon(
              Icons.email_outlined,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return "Please enter email";
              }

              if (!AppRegex.isEmailValid(
                value,
              )) {
                return "Invalid email";
              }

              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          /// PHONE
          CustomTextFormField(
            hintText: "Phone Number",
            controller:
                cubit.phoneController,
            suffixIcon: const Icon(
              Icons.phone_outlined,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return "Please enter phone";
              }

              if (value.length < 11) {
                return "Invalid phone number";
              }

              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          /// PASSWORD
          CustomTextFormField(
            hintText: "Password",
            controller:
                cubit.passwordController,
            obscureText:
                !isPasswordVisible,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible =
                      !isPasswordVisible;
                });
              },
              icon: Icon(
                isPasswordVisible
                    ? Icons.visibility
                    : Icons
                        .visibility_off_outlined,
                color: Colors.grey,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return "Enter password";
              }

              if (!AppRegex.isPasswordValid(
                value,
              )) {
                return "Weak password";
              }

              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          /// CONFIRM PASSWORD
          CustomTextFormField(
            hintText:
                "Confirm Password",
            controller: cubit
                .confirmPasswordController,
            obscureText:
                !isConfirmPasswordVisible,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isConfirmPasswordVisible =
                      !isConfirmPasswordVisible;
                });
              },
              icon: Icon(
                isConfirmPasswordVisible
                    ? Icons.visibility
                    : Icons
                        .visibility_off_outlined,
                color: Colors.grey,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return "Confirm password";
              }

              if (value !=
                  cubit.passwordController
                      .text) {
                return "Passwords do not match";
              }

              return null;
            },
          ),

          Spacing.verticalSpacing(16),

          /// PASSWORD VALIDATOR
          PasswordValidator(
            hasUppercase:
                hasUppercase,
            hasLowercase:
                hasLowercase,
            hasSpecialCharacters:
                hasSpecialCharacters,
            hasMinLength:
                hasMinLength,
            hasNumber: hasNumber,
          ),
        ],
      ),
    );
  }
}