import 'package:bloc_demo/login/bloc/login_event.dart';
import 'package:bloc_demo/login/bloc/login_state.dart';
import 'package:bloc_demo/login/model/login_resp_model.dart';
import 'package:bloc_demo/login/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginReqEvent>((event, emit) async {
      emit(LoginLoadingState());
      try {
        LoginRespModel? loginRespModel = await LoginRepo().login(
          event.loginReqModel?.username ?? "",
          event.loginReqModel?.password ?? "",
        );

        emit(LoginLoadedState(loginRespModel: loginRespModel));
      } catch (e) {
        emit(LoginErrorState(errorMsg: e.toString()));
      }
    });
  }
}
