import 'dart:async';

class NetworkUtil{
  static NetworkUtil _networkUtilInstance = new NetworkUtil.internal();
  NetworkUtil.internal(); //method
  factory NetworkUtil() => _networkUtilInstance; //factory constractor

  //sigleton classs

  Future<dynamic> get(){
    return null;
  }
}