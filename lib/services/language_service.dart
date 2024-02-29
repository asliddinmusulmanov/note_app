// ignore_for_file: non_constant_identifier_names, prefer_final_fields

enum Language{en,ru,uz}

class LanguageService{
  static Language _language = Language.en;

  static Language get getLanguage => _language;
  
  static set setLanguage(Language lang){
    _language = lang;
  }

  static void switchLanguage(String language){
    switch(language){
      case '1': {LanguageService.setLanguage = Language.en;} break;
      case '2': {LanguageService.setLanguage = Language.ru;} break;
      case '3': {LanguageService.setLanguage = Language.uz;}break;
      default: {LanguageService.setLanguage = Language.uz;}
    }
  }
}
