// ignore_for_file: file_names

import 'dart:io';

import 'package:dart_application_1/colors/colors.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/home_menu.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:dart_application_1/models/choyxona_model.dart';
import 'package:dart_application_1/services/network_service.dart';

class AdminPanel extends Menu {
  @override
  Future<void> build() async {
    // print("Parolni kiriting");

    print("1. Product Create");
    print("2. Product Delete");

    String button = stdin.readLineSync()!;
    HomeMenu homeMenu = HomeMenu();

    switch (button) {
      case "1":
        {
          createProduct();
        }
      case "2":{
        deleteProduct();
        print("Product muvofaaqiyatli o'chirildi!");
        homeMenu.build();
      }
      default:
    }
  }

  void deleteProduct() async{
    print("Idni kiriting\n");
    String idKiriting = stdin.readLineSync()!;
    
     NetworkService.delateDate(NetworkService.date, idKiriting);
  }

  void createProduct() async {
    final title = (generatorLanguage[buttonExport] as Map);
    // ignore: unnecessary_string_interpolations
    print(title["dishName"]);
    String taomNomi = stdin.readLineSync()!;
    // ignore: unnecessary_string_interpolations
    print(title["foodPrice"]);
    String taomNarxi = stdin.readLineSync()!;
    // ignore: unnecessary_string_interpolations
    print(title["drinkName"]);
    String ichimlikNomi = stdin.readLineSync()!;
    // ignore: unnecessary_string_interpolations
    print(title["drinkPrice"]);
    String ichimliknarxi = stdin.readLineSync()!;
    // ignore: unnecessary_string_interpolations
    print(title["desertName"]);
    String shirinlikNomi = stdin.readLineSync()!;
    // ignore: unnecessary_string_interpolations
    print(title["sweetPrice"]);
    String shirinlikNarxi = stdin.readLineSync()!;

    Taom taom = Taom(
      milliytaomlar: taomNomi,
      ichimliklar: ichimlikNomi,
      shirinliklar: shirinlikNomi,
      taomnarxi: taomNarxi,
      ichimliknarxi: ichimliknarxi,
      shirinliknarxi: shirinlikNarxi,
      milliytaomlarnarxi: taomNarxi,
    );

    await NetworkService.postDate(NetworkService.date, taom.toJson());

    // ignore: unnecessary_string_interpolations
    ColorsText.printGreen(title["foodAdd"]);

    HomeMenu homeMenu = HomeMenu();

    homeMenu.build();
  }
}
