import 'dart:async';

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final RegExp _phoneNumberRegex = RegExp(r'^\d{10}$');
  TextEditingController countryCodeController =
      TextEditingController(text: "+91");
  TextEditingController phoneNumberController = TextEditingController();
  bool isError = false;
  bool _resendCode = false;
  int _count = 30;

  RegExp get phoneNumberRegex => _phoneNumberRegex;
  bool get resendCode => _resendCode;
  int get count => _count;

  void validatePhoneNumber() {
    isError = !phoneNumberRegex.hasMatch(phoneNumberController.text);
    notifyListeners();
  }

  void startResendTimer() {
    _resendCode = true;
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_count > 0) {
          _count--;
        } else {
          timer.cancel();
          _count = 30;
          _resendCode = false;
        }
        notifyListeners();
      },
    );
  }
}
