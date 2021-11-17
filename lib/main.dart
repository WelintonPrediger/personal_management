import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_personal_management/settings/theme/theme_service.dart';
import 'package:project_personal_management/settings/theme/themes.dart';
import 'package:project_personal_management/views/home_page.dart';
import 'package:project_personal_management/views/settings_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Personal Management',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/settings', page: () => const SettingsPage()),
        GetPage(name: '/home', page: () => const HomePage())
      ],
      initialRoute: '/home',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
