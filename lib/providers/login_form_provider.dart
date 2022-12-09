import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  String email = '';
  String password = '';
  GlobalKey<FormState> key = GlobalKey<FormState>();
  bool isValid() {
    print(key.currentState?.validate());
    print("$email---$password");
    return key.currentState?.validate() ?? false;
  }
}
