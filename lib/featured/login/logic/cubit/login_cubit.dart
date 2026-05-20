import 'package:bloc/bloc.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/featured/login/data/model/login_request_model.dart';
import 'package:doctor_app/featured/login/data/repos/login_repos.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepos loginRepos;
  LoginCubit(this.loginRepos) : super(LoginState.initial());
   final TextEditingController emailController=TextEditingController();
    final TextEditingController passwordController=TextEditingController();
  final formKey = GlobalKey<FormState>();
 

  void emitLoginState(LoginRequestModel loginRequestModel) async {
    emit(LoginState.loading());
    final response = await loginRepos.createLogin(loginRequestModel);
    response.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (error) => emit(LoginState.failure(error: error.apiErrorModel.message?? 'An error occurred')),
    );
  }
}
