import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repos/loginrepo.dart';
import 'loginEvent.dart';
import 'loginState.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
 
  final AuthRepository _repo;

  AuthBloc(this._repo) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await _repo.login(event.email, event.password);
        final role = await _repo.getUserRole(user!.uid);
        emit(AuthSuccess(role!));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<RegisterEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await _repo.register(event.email, event.password, event.role);
        emit(AuthSuccess(event.role));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}