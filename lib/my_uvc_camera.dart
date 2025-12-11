
import 'my_uvc_camera_platform_interface.dart';

class MyUvcCamera {
  Future<String?> getPlatformVersion() {
    return MyUvcCameraPlatform.instance.getPlatformVersion();
  }
}
