import 'package:bloc_demo/login/bloc/login_bloc.dart';
import 'package:bloc_demo/login/login_page_dart.dart';
import 'package:bloc_demo/profile/profile_bloc.dart';
import 'package:bloc_demo/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_page/counter_bloc.dart';
import 'counter_page/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ProfileBloc()),
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => LoginBloc())],

      child: MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage()),
    );
  }
}
