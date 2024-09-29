
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_cubit_app/main.dart';

class MockAuthCubit extends MockCubit<AuthState> implements AuthCubit {}

void main() {
	group('Main App Initialization', () {
		testWidgets('App loads with LoginScreen', (tester) async {
			await tester.pumpWidget(MyApp());
			expect(find.byType(LoginScreen), findsOneWidget);
		});
	});

	group('AuthCubit', () {
		late AuthCubit authCubit;

		setUp(() {
			authCubit = MockAuthCubit();
		});

		blocTest<AuthCubit, AuthState>(
			'emit Authenticated when login is called',
			build: () => authCubit,
			act: (cubit) => cubit.login('email', 'password'),
			expect: () => [isA<Authenticated>()],
		);

		blocTest<AuthCubit, AuthState>(
			'emit Unauthenticated when logout is called',
			build: () => authCubit,
			act: (cubit) => cubit.logout(),
			expect: () => [isA<Unauthenticated>()],
		);
	});
}
