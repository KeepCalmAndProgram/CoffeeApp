import 'package:coffee_app/packages/authenticationRepository/authentication_repository.dart';
import 'package:coffee_app/packages/login/bloc/login_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => LoginBloc(
            authenticationRepository: context.read<AuthenticationRepository>(),
          ),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
