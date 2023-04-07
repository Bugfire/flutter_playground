import 'package:flutter/foundation.dart';
import 'i18n/strings.g.dart';

void i18nInit() {
  if (kDebugMode) {
    print('i18nInit');
  }

  _i18nSetLocale();
}

void i18nChangeLocale() {
  if (kDebugMode) {
    print('i18nChangeLocale');
  }
  _i18nSetLocale();
}

void _i18nSetLocale() {
  if (kDebugMode) {
    print('i18nChangeLocale');
    print(LocaleSettings.currentLocale.languageTag);
  }

  LocaleSettings.useDeviceLocale();
  // LocaleSettings.setLocaleRaw(xxx);

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
