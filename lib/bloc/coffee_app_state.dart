part of 'coffee_app_bloc.dart';

class CoffeeAppState {}

class CoffeeAppInitial extends CoffeeAppState {}

class CoffeeAppLoading extends CoffeeAppState {}

class CoffeeAppLoaded extends CoffeeAppState {}

class CoffeeAppLoadingFailture extends CoffeeAppState {
  CoffeeAppLoadingFailture({
    required this.exception,
  });

  final Object? exception;
}
