import 'datum.dart';

class DoctorModel {
  String? message;
  List<Datum>? data;
  bool? status;
  int? code;

  DoctorModel({this.message, this.data, this.status, this.code});

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        message: json['message'] as String?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        status: json['status'] as bool?,
        code: json['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
        'status': status,
        'code': code,
      };
}
