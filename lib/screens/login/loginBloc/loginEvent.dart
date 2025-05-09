abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email, password;
  LoginEvent(this.email, this.password);
}

class RegisterEvent extends AuthEvent {
  final String email, password, role;
  RegisterEvent(this.email, this.password, this.role);
}