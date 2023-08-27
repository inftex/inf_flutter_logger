import 'dart:developer';

import 'package:flutter/foundation.dart';

class Logger {
  static void error(String message, {String tag = "❌"}) {
    if (kDebugMode) {
      log(message);
    }
  }

  static void info(String message, {String tag = "ℹ️"}) {
    if (kDebugMode) {
      log(message);
    }
  }

  static void warning(String message, {String tag = "🟡"}) {
    if (kDebugMode) {
      log(message);
    }
  }

  static void req(String message, {String tag = "⬆️"}) {
    if (kDebugMode) {
      log(message);
    }
  }

  static void res(String message, {String tag = "⬇️"}) {
    if (kDebugMode) {
      log(message);
    }
  }
}
