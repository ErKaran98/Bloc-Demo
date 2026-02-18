import 'dart:convert';

import 'package:bloc_demo/login/model/login_req_model.dart';
import 'package:bloc_demo/login/model/login_resp_model.dart';
import 'package:http/http.dart' as http;

class LoginRepo {
  Future<LoginRespModel> login(String username, String password) async {
    var url = "https://dummyjson.com/auth/login";
    LoginReqModel loginReqModel = LoginReqModel(
      username: username,
      password: password,
    );
    http.Response response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(loginReqModel.toJson()),
    );

    try {
      if (response.statusCode == 200) {
        var resp = response.body;

        var responseBody = jsonDecode(resp);
        return LoginRespModel.fromJson(responseBody);
      } else {
        return LoginRespModel();
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
