import 'dart:io';

import 'package:dart_application_1/colors/colors.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:hive/hive.dart';

bool? rostmi;

class Register {
  static late Box box;
  static Future<void> register() async {
    box = Hive.box('users');
    final title = (generatorLanguage[buttonExport] as Map);
    stdout.write('${title["enterEmail"]}');
    String email = stdin.readLineSync()!;
    while (!(email.contains(RegExp("[a-zA-Z0-9].{3,}@gmail.com")))) {
      print("Example => example@gmail.com\nLength => [4 >>> ]");
      email = stdin.readLineSync()!;
    }
    stdout.write('${title["enterPassword"]}');
    String password = stdin.readLineSync()!;

    if (email.isNotEmpty && password.isNotEmpty) {
      box.put("email", email);
      box.put("password", password);
      box.put('isreg', true);
      
      ColorsText.printGreen("${title["succes"]}");
    } else {
      print("Qayta kiriting!");
    }
  }
}
