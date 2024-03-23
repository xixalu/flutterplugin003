
import 'flutter_first_demo_platform_interface.dart';

class FlutterFirstDemo {
  Future<String?> getPlatformVersion() {
    return FlutterFirstDemoPlatform.instance.getPlatformVersion();
  }
}
