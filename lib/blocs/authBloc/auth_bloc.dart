import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repos/auth_repo.dart';
import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AppStarted>((event, emit) async {
      final user = authRepository.currentUser;
      if (user != null) {
        final isAdmin = await authRepository.isAdmin();
        emit(Authenticated(isAdmin));
      } else {
        emit(Unauthenticated());
      }
    });

    on<LoggedIn>((event, emit) async {
      final isAdmin = await authRepository.isAdmin();
      emit(Authenticated(isAdmin));
    });

    on<LoggedOut>((event, emit) async {
      await authRepository.signOut();
      emit(Unauthenticated());
    });
  }
}
