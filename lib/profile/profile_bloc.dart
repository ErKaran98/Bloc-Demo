import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileState {
  final String userName;
  final int age;

  ProfileState({required this.userName,required this.age});

}

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState(userName: 'Karan', age: 27));

  void updateUserName(String userName) {
    emit(ProfileState(userName: userName, age: state.age));
  }

  void updateAge(int age) {
    emit(ProfileState(userName: state.userName, age: age));
  }

}