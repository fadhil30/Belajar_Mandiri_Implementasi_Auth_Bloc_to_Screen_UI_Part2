// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UserAccount userAccount;
  final bool isRegister;
  AuthSuccess({
    required this.userAccount,
    required this.isRegister,
  });
}
