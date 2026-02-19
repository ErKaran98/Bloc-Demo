import 'package:bloc_demo/login/bloc/login_bloc.dart';
import 'package:bloc_demo/login/login_page_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginBloc())],

      child: MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()),
    );
  }
}
