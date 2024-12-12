import 'datum.dart';

class SpecializedDoctors {
	String? message;
	List<Datum>? data;
	bool? status;
	int? code;

	SpecializedDoctors({this.message, this.data, this.status, this.code});

	factory SpecializedDoctors.fromJson(Map<String, dynamic> json) {
		return SpecializedDoctors(
			message: json['message'] as String?,
			data: (json['data'] as List<dynamic>?)
						?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
						.toList(),
			status: json['status'] as bool?,
			code: json['code'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'message': message,
				'data': data?.map((e) => e.toJson()).toList(),
				'status': status,
				'code': code,
			};
}
