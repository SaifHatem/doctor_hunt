import 'package:equatable/equatable.dart';

class Data extends Equatable {
	final List<String>? email;
	final List<String>? password;

	const Data({this.email, this.password});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				email: json['email'] as List<String>?,
				password: json['password'] as List<String>?,
			);

	Map<String, dynamic> toJson() => {
				'email': email,
				'password': password,
			};

	@override
	List<Object?> get props => [email, password];
}
