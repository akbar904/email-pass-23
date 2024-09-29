
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {}

class AuthUnauthenticated extends AuthState {}

class AuthCubit extends Cubit<AuthState> {
	AuthCubit() : super(AuthInitial());

	void login(String email, String password) {
		emit(AuthLoading());
		// Here you would usually call an authentication service
		// For this example, we'll just emit Authenticated after a delay
		Future.delayed(Duration(seconds: 2), () {
			emit(AuthAuthenticated());
		});
	}

	void logout() {
		emit(AuthLoading());
		// Here you would usually call a logout service
		// For this example, we'll just emit Unauthenticated after a delay
		Future.delayed(Duration(seconds: 2), () {
			emit(AuthUnauthenticated());
		});
	}
}
