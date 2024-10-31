import 'package:coffee_app/packages/authentication/bloc/authentication_bloc.dart';
import 'package:coffee_app/packages/authenticationRepository/authentication_repository.dart';
import 'package:coffee_app/packages/screens/splash_screen.dart';
import 'package:coffee_app/packages/userRepository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/screens/home_screen.dart';
import '../login/screen/login_screen.dart';

class App extends StatefulWidget {
   const App({super.key});

   @override
   State<App> createState() => _AppState();
 }

 class _AppState extends State<App> {

  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();
    _authenticationRepository = AuthenticationRepository();
    _userRepository = UserRepository();
  }

  @override
  void dispose() {
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
   Widget build(BuildContext context) {
     return RepositoryProvider.value(
         value: _authenticationRepository,
         child: BlocProvider(
           lazy:  false,
           create: (_) => AuthenticationBloc(
               authenticationRepository: _authenticationRepository,
               userRepository: _userRepository,
           )..add(AuthenticationSubscriptionRequested()),
           child: const AppView(),
         ),
     );
   }
 }

 class AppView extends StatefulWidget {
   const AppView({super.key});

   @override
   State<AppView> createState() => _AppViewState();
 }

 class _AppViewState extends State<AppView> {

  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       navigatorKey: _navigatorKey,
       builder: (context, child) {
         return BlocListener<AuthenticationBloc, AuthenticationState>(
             listener: (context, state) {
               switch (state.status) {
                 case AuthenticationStatus.authenticated:
                   _navigator.pushAndRemoveUntil<void>(
                     HomeScreen.route(), /// измнгить на домашний екран
                       (route) => false,
                   );
                 case AuthenticationStatus.unauthenticated:
                   _navigator.pushAndRemoveUntil<void>(
                      LoginScreen.route(), ///изменить
                      (route) => false,
                   );
                 case AuthenticationStatus.unknown:
                   break;
               }
             },
           child: child,
         );
       },
       onGenerateRoute: (_) => SplashScreen.route(), /// изменить
     );
   }
 }







