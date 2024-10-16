import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/features/login/data/models/login_request_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState(LoginRequestBody loginRequestBody) async{
    emit(const LoginState.loading());
    final response = await _loginRepository.login(loginRequestBody);
    response.when(success: (loginResponse){
      emit(LoginState.success(loginResponse));
    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message));
    });
  }
}