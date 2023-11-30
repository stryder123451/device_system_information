//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <device_system_information/device_system_information_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) device_system_information_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DeviceSystemInformationPlugin");
  device_system_information_plugin_register_with_registrar(device_system_information_registrar);
}
