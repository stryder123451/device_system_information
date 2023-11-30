import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_system_information_platform_interface.dart';

/// An implementation of [DeviceSystemInformationPlatform] that uses method channels.
class MethodChannelDeviceSystemInformation
    extends DeviceSystemInformationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_system_information');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getUniqueIdentificator() async {
    try {
      final version =
          await methodChannel.invokeMethod<String>('getUniqueIdentificator');
      return version;
    } catch (e) {
      return "Not implemented because of $e";
    }
  }
}
