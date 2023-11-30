#include "include/device_system_information/device_system_information_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "device_system_information_plugin.h"

void DeviceSystemInformationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  device_system_information::DeviceSystemInformationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
