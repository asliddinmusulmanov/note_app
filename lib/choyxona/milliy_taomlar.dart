import 'package:dart_application_1/choyxona/ichimliklar.dart';
import 'package:dart_application_1/data/generator_lan.dart';
import 'package:dart_application_1/menu/main_menu.dart';
import 'package:dart_application_1/menu/setting_menu.dart';
import 'package:dart_application_1/models/choyxona_model.dart';
import 'package:dart_application_1/services/network_service.dart';

List<Taom> taomlist = [];

class MilliyTaomlar extends Menu {
  @override
  Future<void> build() async {
    final title = (generatorLanguage[buttonExport] as Map);

    await getAll();
    for (var i = 0; i < taomlist.length; i++) {
      print(
          "${title["national"]} : ${taomlist[i].milliytaomlar}     |    ${title["price"]} : ${taomlist[i].milliytaomlarnarxi}");
    }

    Ichimliklar.qaytaSorov();
  }

  static Future<void> getAll() async {
    String? str = await NetworkService.getDate(NetworkService.date);
    taomlist = taomFromJson(str ?? 'Asliddin');
  }
}
