import 'dart:convert';

class LoginRequestModel {
  final String? email;
  final String? password;

  LoginRequestModel({this.email, this.password});

  factory LoginRequestModel.fromJson(String str) =>
      LoginRequestModel.fromMap(json.decode(str));

  Map<String, dynamic> toJson() => toMap();

  factory LoginRequestModel.fromMap(Map<String, dynamic> json) =>
      LoginRequestModel(email: json["email"], password: json["password"]);

  Map<String, dynamic> toMap() => {"email": email, "password": password};
}