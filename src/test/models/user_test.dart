
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_cubit_app/models/user.dart';

void main() {
	group('User Model Tests', () {
		test('User model should serialize and deserialize correctly', () {
			// Arrange
			final user = User(email: 'test@example.com', password: 'password123');
			final expectedJson = {'email': 'test@example.com', 'password': 'password123'};

			// Act
			final userJson = user.toJson();
			final deserializedUser = User.fromJson(userJson);

			// Assert
			expect(userJson, equals(expectedJson));
			expect(deserializedUser.email, equals(user.email));
			expect(deserializedUser.password, equals(user.password));
		});

		test('User model should have correct properties', () {
			// Arrange
			final email = 'user@example.com';
			final password = 'securePassword';
			final user = User(email: email, password: password);

			// Assert
			expect(user.email, equals(email));
			expect(user.password, equals(password));
		});
	});
}
