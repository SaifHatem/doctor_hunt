// import 'package:dartz/dartz.dart';
// import 'package:doctor_hunt/features/auth/data/models/login_model/login_model.dart';
// import 'package:doctor_hunt/features/auth/data/repos/auth_repo.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// // Replace with the actual path

// // Mock class
// class MockAuthRepo extends Mock implements AuthRepo {}

// void main() {
//   late MockAuthRepo mockAuthRepo;

//   setUp(() {
//     mockAuthRepo = MockAuthRepo();
//   });

//   group('AuthRepo Tests', () {
//     test('returns LoginModel when login is successful', () async {
//       // Arrange
//       final loginModel =
//           LoginModel(S); // Replace with the actual fields in your LoginModel
//       when(() => mockAuthRepo.login(
//             email: 'shatem793@gmail.com',
//             password: '1234567',
//           )).thenAnswer((_) async => Right(loginModel));

//       // Act
//       final result = await mockAuthRepo.login(
//         email: 'shatem793@gmail.com',
//         password: '1234567',
//       );

//       // Assert
//       expect(result, isA<Right>());
//       expect(result.getOrElse(() => throw Exception('Unexpected error')),
//           loginModel);
//       verify(() => mockAuthRepo.login(
//             email: 'shatem793@gmail.com',
//             password: '1234567',
//           )).called(1);
//     });

//     test('returns error string when login fails', () async {
//       // Arrange
//       when(() => mockAuthRepo.login(
//             email: 'wrong@gmail.com',
//             password: 'wrongpassword',
//           )).thenAnswer((_) async => const Left('Invalid credentials'));

//       // Act
//       final result = await mockAuthRepo.login(
//         email: 'wrong@gmail.com',
//         password: 'wrongpassword',
//       );

//       // Assert
//       expect(result, isA<Left>());
//       expect(result.swap().getOrElse(() => ''), 'Invalid credentials');
//       verify(() => mockAuthRepo.login(
//             email: 'wrong@gmail.com',
//             password: 'wrongpassword',
//           )).called(1);
//     });
//   });
// }
