import 'dart:io';

import 'package:dart_application_1/choyxona/ichimliklar.dart';
import 'package:dart_application_1/choyxona/milliy_taomlar.dart';
import 'package:dart_application_1/choyxona/shirinliklar.dart';
import 'package:dart_application_1/colors/colors.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:dart_application_1/services/navigation_service.dart';

class ProfileMenu extends Menu {
  @override
  Future<void> build() async {
    center();
  }

  static Future<void> center() async {
    final title = (generatorLanguage[buttonExport] as Map);

    print("1. ${title["national"]}");
    print("2. ${title["drinks"]}");
    print("3. ${title["sweets"]}");
    print("4. ${title["main"]}");
    print("0.${title["exit"]}");

    String kiritingMenu = stdin.readLineSync()!;
    ProfileMenu profileMenu = ProfileMenu();
    switch (kiritingMenu) {
      
      case "1":
        {
          await Navigator.push(MilliyTaomlar() as Menu);
        }
      case "2":
        {
          await Navigator.push(Ichimliklar() as Menu);
        }
      case "3":
        {
          await Navigator.push(Shirinliklar() as Menu);
        }
      case "4":
        {
          HomeMenu.boshMenu();
        }
      case "0":
        {
          ColorsText.printGreen("${title["theEnd"]}");
          exit(0);
        }
      default:
        {
          // ignore: unnecessary_string_interpolations
          print(title["notMenu"]);
          profileMenu.build();
        }
    }
  }
}
