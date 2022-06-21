import 'dart:async';

import 'package:flutter/services.dart';

class FileImagePick {
  static const MethodChannel _channel = MethodChannel('fw.file.image.pick"');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Map?> get openChooseFile async {
    final Map? fileMap = await _channel.invokeMethod('openChooseFile');
    return fileMap;
  }
}
