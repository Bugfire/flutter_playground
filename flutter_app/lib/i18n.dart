import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'i18n/strings.g.dart';

const _prefsKeyLang = 'lang';

enum Language {
  system,
  ja,
  en,
  zhCn,
}

Map<Language, String> _languageMap = {
  Language.ja: 'ja',
  Language.en: 'en',
  Language.zhCn: 'zh_CN',
};

Map<String, Language> _reverseLanguageMap = {
  for (var e in _languageMap.entries) e.value: e.key
};

Language _lang = Language.system;

Future<void> i18nInit() async {
  _lang = Language.system;
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedLang = prefs.getString(_prefsKeyLang);
    if (savedLang != null) {
      final tryLang = _reverseLanguageMap[savedLang];
      if (tryLang != null) {
        _lang = tryLang;
      }
    }
  } catch (_) {}

  if (kDebugMode) {
    print('i18nInit: ${_lang.name}');
  }

  _i18nSetLocale();
}

Future<void> i18nChangeLocale(Language newLang) async {
  if (kDebugMode) {
    print('i18nChangeLocale: ${newLang.name}');
  }
  _lang = newLang;
  _i18nSetLocale();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final saveLang = _languageMap[_lang];
  if (saveLang == null || _lang == Language.system) {
    await prefs.remove(_prefsKeyLang);
  } else {
    await prefs.setString(_prefsKeyLang, saveLang);
  }
}

void _i18nSetLocale() {
  if (kDebugMode) {
    print('_i18nSetLocale');
    print(LocaleSettings.currentLocale.languageTag);
  }

  if (_lang == Language.system) {
    LocaleSettings.useDeviceLocale();
  } else {
    final langStr = _languageMap[_lang];
    if (langStr != null) {
      LocaleSettings.setLocaleRaw(langStr);
    } else {
      LocaleSettings.useDeviceLocale();
    }
  }

  if (kDebugMode) {
    print('---');
    print(LocaleSettings.currentLocale.languageTag);
  }
}

/*
  TODO:
    preference に保存・読み込みロジック
    デバイスロケールが何に設定されているかの取得

    (デバイスロケール＝ユーザ設定ロケール) の場合はシステムロケールにする
 */
