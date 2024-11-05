import 'package:doctor_hunt/core/api/endpoints.dart';
import 'package:equatable/equatable.dart';

import 'data.dart';

class LoginModel extends Equatable {
  final String? message;
  final Data? data;
  final bool? status;
  final int? code;

  const LoginModel({this.message, this.data, this.status, this.code});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json[ApiKey.message] as String?,
        data: json[ApiKey.data] == null
            ? null
            : Data.fromJson(json[ApiKey.data] as Map<String, dynamic>),
        status: json[ApiKey.status] as bool?,
        code: json[ApiKey.code] as int?,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.message: message,
        ApiKey.data: data?.toJson(),
        ApiKey.status: status,
        ApiKey.code: code,
      };

  @override
  List<Object?> get props => [message, data, status, code];
}
