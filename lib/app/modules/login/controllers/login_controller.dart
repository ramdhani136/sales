import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late String _IdToken;
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (_IdToken != null) {
      return _IdToken;
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    usernameC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}
