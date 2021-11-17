import 'dart:developer';

import 'package:get/get.dart';
import 'package:project_personal_management/settings/theme/theme_service.dart';

class SettingsController extends GetxController {

  var switchTheme = false.obs;

  @override
  void onInit() {
    switchSave();
    super.onInit();
  }

  changeTheme(bool value) {
     log('Value: $value');
     switchTheme.value = value;
     ThemeService().changeThemeMode();
   }

   switchSave() {
     switchTheme.value = ThemeService().isSavedDarkMode();
   }

}