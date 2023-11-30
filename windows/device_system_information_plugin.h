#ifndef FLUTTER_PLUGIN_DEVICE_SYSTEM_INFORMATION_PLUGIN_H_
#define FLUTTER_PLUGIN_DEVICE_SYSTEM_INFORMATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace device_system_information {

class DeviceSystemInformationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DeviceSystemInformationPlugin();

  virtual ~DeviceSystemInformationPlugin();

  // Disallow copy and assign.
  DeviceSystemInformationPlugin(const DeviceSystemInformationPlugin&) = delete;
  DeviceSystemInformationPlugin& operator=(const DeviceSystemInformationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace device_system_information

#endif  // FLUTTER_PLUGIN_DEVICE_SYSTEM_INFORMATION_PLUGIN_H_
