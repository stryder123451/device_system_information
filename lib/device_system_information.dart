
import 'device_system_information_platform_interface.dart';

class DeviceSystemInformation {
  Future<String?> getPlatformVersion() {
    return DeviceSystemInformationPlatform.instance.getPlatformVersion();
  }
}
