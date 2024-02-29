import 'dart:io';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

class AuthServise {
  static Box? box;
  static Box? isReg;
  static void hiveIndianTutorial() async {
    String directory = path.join(Directory.current.path, 'dbservises');
    Hive.init(directory);
    //  papkani ichida file create qildi
    await Hive.openBox('users');
    // fileni ichiga malumotlarni yozib joylovchi kalit so'z
    box = Hive.box('users');
  }

  static bool isregister(bool isreg) {
    return isreg;
  }
}
