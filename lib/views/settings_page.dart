import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_personal_management/settings/theme/theme_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: const Icon(
                Icons.light,
                size: 50,
              ),
              onPressed: () {
                ThemeService().changeThemeMode();
              },
            )
          ],
        ),
      ),
    );
  }
}
