import 'package:fluttersqlitelogin/models/user_model.dart';
import 'package:fluttersqlitelogin/data/rest_data.dart';

abstract class LoginPageContract {
  void onLoginSuccess(UserModel userModel);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();

  LoginPagePresenter(this._view);

  doLogin(String username, String password) {
    api
        .login(username, password)
        .then((userModel) => _view.onLoginSuccess(userModel))
        .catchError((onError) => _view.onLoginError(onError.toString()));
  }
}
