import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String? name;
  String? job;
  String? id;
  String? createdAt;

  PostResult({this.name, this.job, this.id, this.createdAt});

  PostResult.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    job = json['job'];
    id = json['id'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['job'] = job;
    data['id'] = id;
    data['createdAt'] = createdAt;
    return data;
  }

  static Future<PostResult> connectToApi(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";
    final apiResult =
        await http.post(Uri.parse(apiURL), body: {"name": name, "job": job});
    final jsonObject = json.decode(apiResult.body);

    return PostResult.fromJson(jsonObject);
  }
}
