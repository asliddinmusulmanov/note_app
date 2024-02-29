import 'package:dart_application_1/data/en.dart';
import 'package:dart_application_1/data/ru.dart';
import 'package:dart_application_1/data/uz.dart';

import 'language_service.dart';

extension LanguageExtension on String{
  String get translation{
    switch(LanguageService.getLanguage){
      case Language.en:
        return en[this] ?? this;
      case Language.ru:
        return ru[this] ?? this;
      case Language.uz:
        return uz[this] ?? this;
    }
  }
}


