import 'dart:io';

import 'package:dart_application_1/choyxona/milliy_taomlar.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/profile_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';

class Ichimliklar extends Menu {
  @override
  Future<void> build() async {
    final title = (generatorLanguage[buttonExport] as Map);

    await MilliyTaomlar.getAll();
    for (var i = 0; i < taomlist.length; i++) {
      print(
          "${title["drinks"]} : ${taomlist[i].ichimliklar}    |    ${title["price"]} : ${taomlist[i].ichimliknarxi}");
    }

    Ichimliklar.qaytaSorov();
  }

  static Future<void> qaytaSorov() async {
    final title = (generatorLanguage[buttonExport] as Map);
   
    print("1. ${title["returnMainMenu"]}");
    print("2. ${title["returnProfile"]}");
    print("3. ${title["exit"]}");

    String nimadir = stdin.readLineSync()!;
    switch (nimadir) {
      case "1":
        {
          HomeMenu.boshMenu();
        }
      case "2":
        {
          ProfileMenu.center();
        }
      case "0":
        {
          exit(0);
        }
      default:
        // ignore: unnecessary_string_interpolations
        print(title["noSuchChoice"]);
        
    }
  }
}
