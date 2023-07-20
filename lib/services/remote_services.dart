import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:identify_user/models/User_info.dart';

class RemoteServices {
  Future<Userinfo> fetchUserInfo() async {
    try {
      var uri =
          Uri.parse("https://randomuser.me/api/?page=3&results=10&seed=abc");
      final response = await http.get(uri);
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return Userinfo.fromJson(data);
      } else {
        throw Exception(
            "Failed to fetch user info. Status Code: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("An error occurred: $error");
    }
  }
}
