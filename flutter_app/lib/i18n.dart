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
  }

  LocaleSettings.useDeviceLocale();
  // LocaleSettings.setLocaleRaw();
}
