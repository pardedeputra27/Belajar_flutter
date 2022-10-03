import 'dart:convert';

import 'package:http/http.dart' as http;

class GetResult {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  GetResult({this.id, this.email, this.firstName, this.lastName, this.avatar});

  GetResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }

  static Future<GetResult> connectToApi(String id) async {
    String apiURL = "https://reqres.in/api/users/$id";
    final apiResult = await http.get(Uri.parse(apiURL));
    final jsonObject = json.decode(apiResult.body)['data'];

    return GetResult.fromJson(jsonObject);
  }
}
