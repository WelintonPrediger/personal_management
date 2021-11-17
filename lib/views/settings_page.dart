import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_personal_management/controllers/settings_controller.dart';
import 'package:project_personal_management/settings/theme/theme_service.dart';
import 'package:project_personal_management/settings/theme/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final SettingsController settingsController = Get.put(SettingsController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Management'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Mudar Tema do App', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                Obx(() => Switch(
                    value: settingsController.switchTheme.value,
                    onChanged: (value) {
                      settingsController.changeTheme(value);
                    },
                  ),
                )
              ],
            ),
          ),
          // IconButton(
          //   icon: const Icon(
          //     Icons.light,
          //     size: 50,
          //   ),
          //   onPressed: () {
          //     ThemeService().changeThemeMode();
          //   },
          // )
        ],
      ),
    );
  }
}
