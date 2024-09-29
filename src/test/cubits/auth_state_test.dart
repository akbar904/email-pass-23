
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_cubit_app/cubits/auth_state.dart';

void main() {
	group('AuthState', () {
		test('Initial state is AuthInitial', () {
			expect(AuthState.initial(), isA<AuthInitial>());
		});

		test('AuthLoading state can be instantiated', () {
			expect(AuthState.loading(), isA<AuthLoading>());
		});

		test('AuthAuthenticated state can be instantiated', () {
			expect(AuthState.authenticated(), isA<AuthAuthenticated>());
		});

		test('AuthUnauthenticated state can be instantiated', () {
			expect(AuthState.unauthenticated(), isA<AuthUnauthenticated>());
		});
	});
}
