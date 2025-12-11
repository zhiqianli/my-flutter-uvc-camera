import 'package:flutter_test/flutter_test.dart';
import 'package:my_uvc_camera/my_uvc_camera.dart';
import 'package:my_uvc_camera/my_uvc_camera_platform_interface.dart';
import 'package:my_uvc_camera/my_uvc_camera_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyUvcCameraPlatform
    with MockPlatformInterfaceMixin
    implements MyUvcCameraPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyUvcCameraPlatform initialPlatform = MyUvcCameraPlatform.instance;

  test('$MethodChannelMyUvcCamera is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyUvcCamera>());
  });

  test('getPlatformVersion', () async {
    MyUvcCamera myUvcCameraPlugin = MyUvcCamera();
    MockMyUvcCameraPlatform fakePlatform = MockMyUvcCameraPlatform();
    MyUvcCameraPlatform.instance = fakePlatform;

    expect(await myUvcCameraPlugin.getPlatformVersion(), '42');
  });
}
