import 'package:dart_application_1/menu/main_menu.dart';

class Navigator {
  static Menu? initialMenu;

  static Future push(Menu menu) async{
    initialMenu = menu;
    await initialMenu?.build(); 
  }
}
