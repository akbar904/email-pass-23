
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:simple_cubit_app/screens/login_screen.dart';

void main() {
	group('LoginScreen Widget Tests', () {
		testWidgets('Displays Login Form', (WidgetTester tester) async {
			// Arrange
			await tester.pumpWidget(MaterialApp(home: LoginScreen()));

			// Act & Assert
			expect(find.byType(LoginForm), findsOneWidget);
		});
	});
}
