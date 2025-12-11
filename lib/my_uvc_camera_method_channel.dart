import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_uvc_camera_platform_interface.dart';

/// An implementation of [MyUvcCameraPlatform] that uses method channels.
class MethodChannelMyUvcCamera extends MyUvcCameraPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_uvc_camera');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
