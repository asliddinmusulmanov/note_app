import 'package:dart_application_1/choyxona/ichimliklar.dart';
import 'package:dart_application_1/choyxona/milliy_taomlar.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';

class Shirinliklar extends Menu {
  @override
  Future<void> build() async {
    final title = (generatorLanguage[buttonExport] as Map);

    await MilliyTaomlar.getAll();
    for (var i = 0; i < taomlist.length; i++) {
      print(
          "${title["sweets"]} : ${taomlist[i].shirinliklar}    |    ${title["price"]} : ${taomlist[i].shirinliknarxi}");
    }

    Ichimliklar.qaytaSorov();
  }
}
