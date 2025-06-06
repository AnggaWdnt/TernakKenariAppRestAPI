import 'dart:convert';

class GetAllInduk {
  final String? message;
  final int? statusCode;
  final List<Datum>? data;

  GetAllInduk({this.message, this.statusCode, this.data});

  factory GetAllInduk.fromJson(String str) =>
      GetAllInduk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetAllInduk.fromMap(Map<String, dynamic> json) => GetAllInduk(
    message: json["message"],
    statusCode: json["status_code"],
    data:
        json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "message": message,
    "status_code": statusCode,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}
