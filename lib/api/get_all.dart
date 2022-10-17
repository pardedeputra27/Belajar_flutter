import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int? id;
  String? email;
  String? name;
  String? avatar;

  User({this.id, this.email, this.name, this.avatar});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['first_name'] + json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['name'] = name;
    data['avatar'] = avatar;
    return data;
  }

  static Future<List<User>> createUsers(String page) async {
    String apiURL = "https://reqres.in/api/users?page=$page";
    final apiResult = await http.get(Uri.parse(apiURL));
    final jsonObject = json.decode(apiResult.body);

    List<dynamic> listUser = jsonObject['data'];
    List<User> users = [];
    for (var i = 0; i < listUser.length; i++) {
      users.add(User.fromJson(listUser[i]));
    }
    return users;
  }
}
