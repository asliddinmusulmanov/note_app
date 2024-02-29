import 'package:dart_application_1/colors/colors.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'dart:io';

import 'package:dart_application_1/services/extension_service.dart';

String buttonExport = 'uz';

class SettingMenu extends Menu {
  HomeMenu homeMenu = HomeMenu();

  String? kiriting;

  @override
  Future<void> build() async {
    ColorsText.printGreen("1. ${"english"}".translation);
    print("2. ${"russian"}".translation);
    print("3. ${"uzbek"}".translation);

    kiriting = stdin.readLineSync()!;
    settingLanguage();
  }

  void settingLanguage() async{
    final title = (generatorLanguage[buttonExport] as Map);
    SettingMenu settingMenu = SettingMenu();
    switch (kiriting) {
      case "1":
        {
          buttonExport = "en";
          homeMenu.build();
        }
      case "2":
        {
          buttonExport = "ru";
          homeMenu.build();
        }
      case "3":
        {
          buttonExport = "uz";
          homeMenu.build();
        }
      default:
        {
          ColorsText.printWarning("${title["tryAgain"]}");
          settingMenu.build();
        }
    }
  }
}
