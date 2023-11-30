import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_system_information_method_channel.dart';

abstract class DeviceSystemInformationPlatform extends PlatformInterface {
  /// Constructs a DeviceSystemInformationPlatform.
  DeviceSystemInformationPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceSystemInformationPlatform _instance =
      MethodChannelDeviceSystemInformation();

  /// The default instance of [DeviceSystemInformationPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceSystemInformation].
  static DeviceSystemInformationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceSystemInformationPlatform] when
  /// they register themselves.
  static set instance(DeviceSystemInformationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getUniqueIdentificator() {
    throw UnimplementedError(
        'getUniqueIdentificator() has not been implemented.');
  }
}
