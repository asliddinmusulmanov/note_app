// // import 'dart:convert';
// // import 'dart:io';
// // import 'dart:typed_data';

// // // "username":"atuny0"
// // // "password":"9uQFF1Lh"

// // import 'package:dart_application_1/models/data_model.dart';
// // import 'package:dart_application_1/services/extension_service.dart';
// // import 'package:dart_application_1/services/language_service.dart';
// // import 'package:dart_application_1/services/network_service.dart';

// // void main(List<String> arguments) async {
// //   String user;
// //   // Greeting time
// //   String greatingText =
// //       'Welcome to Asliddin\'s project. \n \t We glad to see you here!\n\n';
// //   for (var i = 0; i < greatingText.length; i++) {
// //     await Future.delayed(Duration(milliseconds: i));
// //     stdout.write(greatingText[i]);
// //   }
// //   print('Languages:\n\t1. ENG\n\t2. RUS\n\t3. UZB\n');
// //   // chosing language menu
// //   while (true) {
// //     stdout.write('Chose the language: ');
// //     user = stdin.readLineSync()!;
// //     if (user == '1' || user == '2' || user == '3') {
// //       break;
// //     }
// //   }

// //   String str = 'description';
// //   LanguageService.switchLanguage(user);
// //   print(str.translation);
// //   print('\n');

// //   String username = 'username', password = 'password';

// //   stdout.write(username.translation);
// //   String username1 = stdin.readLineSync()!;
// //   stdout.write(password.translation);
// //   String password1 = stdin.readLineSync()!;
// //   print('\n');
// //   String? info = await NetworkService.postDate(
// //       NetworkService.date, {'username': username1, 'password': password1});
// //   if (info == null) {
// //     print('No such user and password'.translation);
// //   } else {
// //     Map<String, dynamic> map = jsonDecode(info);
// //     Date date = Date.fromJson(map);
// //     print('info'.translation);
// //     print("______________________________________________");
// //     print("\t1. ${"id".translation}:${date.id}");
// //     print("______________________________________________");
// //     print("\t2. ${"username1".translation}:${date.username}");
// //     print("______________________________________________");
// //     print("\t3. ${"email".translation}:${date.email}");
// //     print("______________________________________________");
// //     print("\t4. ${"firstName".translation}:${date.firstName}");
// //     print("______________________________________________");
// //     print("\t5. ${"lastName".translation}:${date.lastName}");
// //     print("______________________________________________");
// //     print("\t6. ${"gender".translation}:${date.gender}");
// //     print("______________________________________________");
// //     print("\t7. ${"image".translation}:${date.image}");
// //     print("______________________________________________");
// //     print("\t8. ${"token".translation}:${date.token}");
// //     print("______________________________________________");
// //     print('logedIn'.translation);
// //     print("______________________________________________");

// //     // Product
// //     String? productsAll =
// //         await NetworkService.getAllProductDate(NetworkService.products);
// //     if (productsAll != null) {
// //       List pruct = jsonDecode(productsAll)["products"];
// //       for (var e in pruct) {
// //         print('id:${e["id"]}\n');
// //         print('title:${e["title"]}\n');
// //       }
// //     } else {
// //       print('smth went wrong');
// //     }
// //     // Basket, Карзинка
// //     String choiceUser;
// //     print('Do you like something?'.translation);
// //     print('1. Yes'.translation);
// //     print('2. No'.translation);
// //     while (true) {
// //       stdout.write('Enter your choice: '.translation);
// //       choiceUser = stdin.readLineSync()!;
// //       if (choiceUser == '1' || choiceUser == '2') {
// //         break;
// //       }
// //     }
// //     String choiceUser2;
// //     String choiceUser3;
// //     if (choiceUser == '1') {
// //       stdout.write('chose id: '.translation);
// //       choiceUser2 = stdin.readLineSync()!;
// //       stdout.write('write a title: ');
// //       choiceUser3 = stdin.readLineSync()!;
// //       String? adding = await NetworkService.postDateCopy(
// //           NetworkService.baseUrlBasket,
// //           NetworkService.basket,
// //           {'id': choiceUser2, 'title': choiceUser3});
// //       if (adding != null) {
// //         print('Succesfully  posted');
// //       } else {
// //         print('smth went wrong');
// //       }
// //     }
// //   }
// // }

import 'dart:io';

import 'package:dart_application_1/auth/register.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

void main() async {
  SettingMenu settingMenu = SettingMenu();
  settingMenu.build();

  String directory = path.join(Directory.current.path, 'dbservises');
  Hive.init(directory);
  //  papkani ichida file create qildi
  await Hive.openBox('users');
  // fileni ichiga malumotlarni yozib joylovchi kalit so'z
  Box box;
  box = Hive.box('users');
  // HomeMenu homeMenu = HomeMenu();
  if (box.get('isreg') == true) {
  } else {
    Register.register();
  }
}
