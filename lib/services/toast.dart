import 'package:flutter/services.dart';

class Toast {
  Toast(String message) {
    _showToast(message);
  }
  static const platform = MethodChannel("flutter.toast.message.channel");
  Future<void> _showToast(String message) async {
    // invoke method
    await platform.invokeMethod('toast', {'message': message});
  }
}
