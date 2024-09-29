
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
	AuthCubit() : super(AuthInitial());

	void login(String email, String password) async {
		try {
			emit(AuthLoading());
			// Simulate network call
			await Future.delayed(Duration(seconds: 2));
			if (email == 'email@example.com' && password == 'password123') {
				emit(AuthAuthenticated());
			} else {
				emit(AuthError('Login failed'));
			}
		} catch (e) {
			emit(AuthError('An error occurred'));
		}
	}

	void logout() {
		emit(AuthUnauthenticated());
	}
}
