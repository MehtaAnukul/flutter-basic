import 'dart:async';
import 'package:fluttersqlitelogin/models/user_model.dart';
import 'package:fluttersqlitelogin/utils/network_util.dart';

class RestData{
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<UserModel> login(String username, String password) {
    return new Future.value(new UserModel(username, password));
  }
}