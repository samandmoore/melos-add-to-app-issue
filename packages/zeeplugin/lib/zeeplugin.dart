
import 'dart:async';

import 'package:flutter/services.dart';

class Zeeplugin {
  static const MethodChannel _channel =
      const MethodChannel('zeeplugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
