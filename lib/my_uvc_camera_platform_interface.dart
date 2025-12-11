import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_uvc_camera_method_channel.dart';

abstract class MyUvcCameraPlatform extends PlatformInterface {
  /// Constructs a MyUvcCameraPlatform.
  MyUvcCameraPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyUvcCameraPlatform _instance = MethodChannelMyUvcCamera();

  /// The default instance of [MyUvcCameraPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyUvcCamera].
  static MyUvcCameraPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyUvcCameraPlatform] when
  /// they register themselves.
  static set instance(MyUvcCameraPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
