import 'package:flutter_test/flutter_test.dart';
import 'package:device_system_information/device_system_information.dart';
import 'package:device_system_information/device_system_information_platform_interface.dart';
import 'package:device_system_information/device_system_information_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceSystemInformationPlatform
    with MockPlatformInterfaceMixin
    implements DeviceSystemInformationPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getUniqueIdentificator() async {
    return await DeviceSystemInformation.getUniqueIdentificator();
  }
}

void main() {
  final DeviceSystemInformationPlatform initialPlatform =
      DeviceSystemInformationPlatform.instance;

  test('$MethodChannelDeviceSystemInformation is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelDeviceSystemInformation>());
  });

  test('getPlatformVersion', () async {
    MockDeviceSystemInformationPlatform fakePlatform =
        MockDeviceSystemInformationPlatform();
    DeviceSystemInformationPlatform.instance = fakePlatform;

    expect(await DeviceSystemInformation.getPlatformVersion(), '42');
  });
}
