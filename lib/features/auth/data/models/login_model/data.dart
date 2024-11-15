import '../../../../../core/api/endpoints.dart';
import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? token;
  final String? username;

  const Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json[ApiKey.token] as String?,
        username: json[ApiKey.username] as String?,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.token: token,
        ApiKey.username: username,
      };

  @override
  List<Object?> get props => [token, username];
}
