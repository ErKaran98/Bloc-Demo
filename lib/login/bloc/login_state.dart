import 'package:bloc_demo/login/model/login_resp_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {}

class LoginLoadingState extends LoginState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginLoadedState extends LoginState {

  LoginRespModel? loginRespModel;
  LoginLoadedState({this.loginRespModel});

  @override
  // TODO: implement props
  List<Object?> get props => [loginRespModel];
}

class LoginErrorState extends LoginState {
  String? errorMsg;
  LoginErrorState({this.errorMsg});

  @override
  // TODO: implement props
  List<Object?> get props => [errorMsg];
}
