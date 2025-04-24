import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final bool isAdmin;

  Authenticated(this.isAdmin);

  @override
  List<Object?> get props => [isAdmin];
}

class Unauthenticated extends AuthState {}
