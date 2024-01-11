import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResendTimer extends ChangeNotifier {
  bool _isResendAllowed = true;
  bool get isResendAllowed => _isResendAllowed;

  int _remainingSeconds = 0;
  int get remainingSeconds => _remainingSeconds;

  Timer? _timer;

  void startTimer() {
    _isResendAllowed = false;
    _remainingSeconds = 180; // Three minutes in seconds
    notifyListeners();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _remainingSeconds--;
      if (_remainingSeconds <= 0) {
        _isResendAllowed = true;
        _timer?.cancel();
      }
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
