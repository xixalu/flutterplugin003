import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_first_demo/flutter_first_demo.dart';
import 'package:flutter_first_demo/flutter_first_demo_platform_interface.dart';
import 'package:flutter_first_demo/flutter_first_demo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterFirstDemoPlatform
    with MockPlatformInterfaceMixin
    implements FlutterFirstDemoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterFirstDemoPlatform initialPlatform = FlutterFirstDemoPlatform.instance;

  test('$MethodChannelFlutterFirstDemo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterFirstDemo>());
  });

  test('getPlatformVersion', () async {
    FlutterFirstDemo flutterFirstDemoPlugin = FlutterFirstDemo();
    MockFlutterFirstDemoPlatform fakePlatform = MockFlutterFirstDemoPlatform();
    FlutterFirstDemoPlatform.instance = fakePlatform;

    expect(await flutterFirstDemoPlugin.getPlatformVersion(), '42');
  });
}
