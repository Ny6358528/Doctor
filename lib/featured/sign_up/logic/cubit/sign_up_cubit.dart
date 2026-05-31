import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/featured/sign_up/data/model/signup_request_model.dart';
import 'package:doctor_app/featured/sign_up/data/repo/signup_repos.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';
class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepos signupRepos;

  SignUpCubit(this.signupRepos)
      : super(const SignUpState.initial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupState() async {
    if (isClosed) return;

    emit(const SignUpState.loading());

    final response = await signupRepos.createSignup(
      SignupRequestModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        password_confirmation: confirmPasswordController.text, gender: '0',
      ),
    );

    if (isClosed) return;

    response.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (error) {
        emit(
          SignUpState.failure(
            error: error.apiErrorModel.message ??
                'An error occurred',
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}