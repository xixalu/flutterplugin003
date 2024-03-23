import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_first_demo_method_channel.dart';

abstract class FlutterFirstDemoPlatform extends PlatformInterface {
  /// Constructs a FlutterFirstDemoPlatform.
  FlutterFirstDemoPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterFirstDemoPlatform _instance = MethodChannelFlutterFirstDemo();

  /// The default instance of [FlutterFirstDemoPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterFirstDemo].
  static FlutterFirstDemoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterFirstDemoPlatform] when
  /// they register themselves.
  static set instance(FlutterFirstDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
