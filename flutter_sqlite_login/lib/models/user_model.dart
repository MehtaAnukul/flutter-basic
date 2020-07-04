class UserModel{
  String _username;
  String _password;

  UserModel(this._username, this._password);

  //for api data ex //map constractor
  UserModel.map(dynamic obj){
    this._username = obj['username'];
    this._password = obj['password'];
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  Map<String, dynamic> toMap(){
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;
    return map;
  }
}