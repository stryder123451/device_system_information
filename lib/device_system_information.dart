import 'device_system_information_platform_interface.dart';

class DeviceSystemInformation {
  static Future<String?> getPlatformVersion() {
    return DeviceSystemInformationPlatform.instance.getPlatformVersion();
  }

  static Future<String?> getUniqueIdentificator() {
    return DeviceSystemInformationPlatform.instance.getUniqueIdentificator();
  }
}
