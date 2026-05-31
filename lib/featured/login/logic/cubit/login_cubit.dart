import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/featured/login/data/model/login_request_model.dart';
import 'package:doctor_app/featured/login/data/repos/login_repos.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepos loginRepos;

  LoginCubit(this.loginRepos) : super(const LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> emitLoginState() async {
    if (!formKey.currentState!.validate()) return;

    emit(const LoginState.loading());

    final response = await loginRepos.createLogin(
      LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(
          LoginState.failure(
            error: error.apiErrorModel.message ??
                error.message,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}