// ignore_for_file: unnecessary_string_interpolations

import 'dart:io';

import 'package:dart_application_1/admin/addProduct.dart';
import 'package:dart_application_1/colors/colors.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/profile_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:dart_application_1/services/navigation_service.dart';

class HomeMenu extends Menu {
  @override
  Future<void> build() async {
    final title = (generatorLanguage[buttonExport] as Map);
    String textDescription = await title["description"];
    for (var i = 0; i < textDescription.length; i++) {
      await Future.delayed(Duration(milliseconds: 50));
      stdout.write(textDescription[i]);
    }
    print("");

    // String textLanguage = await title["language"];
    // for (var i = 0; i < textLanguage.length; i++) {
    //   await Future.delayed(Duration(milliseconds: 50));
    //   stdout.write(textLanguage[i]);
    // }
    // print("");

    boshMenu();
  }

  static Future<void> boshMenu() async {
    final title = (generatorLanguage[buttonExport] as Map);
    await Future.delayed(Duration(milliseconds: 500));
    ColorsText.printWarning("1.${title["setting"]}");
    await Future.delayed(Duration(milliseconds: 500));
    ColorsText.printWarning("2.${title["menu"]}");
    await Future.delayed(Duration(milliseconds: 500));
    ColorsText.printWarning("3. ${title["profile"]}");
    await Future.delayed(Duration(milliseconds: 500));
    ColorsText.red("0.${title["exit"]}");

    String input = stdin.readLineSync()!;

    await select(input);
  }

  static Future<void> select(String input) async {
    final title = (generatorLanguage[buttonExport] as Map);
    HomeMenu homeMenu = HomeMenu();
    switch (input) {
      case "1":
        {
          await Navigator.push(SettingMenu());
          break;
        }
      case "2":
        {
          await Navigator.push(ProfileMenu());
          break;
        }
      case "0":
        {
          ColorsText.printGreen("${title["theEnd"]}");
          print("");
          exit(0);
        }
      case "3":
        {
          await Navigator.push(AdminPanel());
        }
      default:
        {
          ColorsText.red("${title["again"]}");
          homeMenu.build();
        }
    }
  }
}
