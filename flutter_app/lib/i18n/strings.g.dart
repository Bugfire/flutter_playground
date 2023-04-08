/// Generated file. Do not edit.
///
/// Locales: 3
/// Strings: 27 (9 per locale)
///
/// Built on 2023-04-08 at 12:09 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	ja(languageCode: 'ja', build: _StringsJa.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: _StringsZhCn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get name => 'Sample';
	String get font_family => 'Roboto';
	late final _StringsMainMenuEn main_menu = _StringsMainMenuEn._(_root);
	late final _StringsDevMenuEn dev_menu = _StringsDevMenuEn._(_root);
}

// Path: main_menu
class _StringsMainMenuEn {
	_StringsMainMenuEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Main Menu';
}

// Path: dev_menu
class _StringsDevMenuEn {
	_StringsDevMenuEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Development Menu';
	String get read => 'Read';
	String get write => 'Write';
	String get nfc_initializing => 'Initializing NFC...';
	String get nfc_enabled => 'NFC Enabled';
	String get nfc_disabled => 'NFC Disabled';
}

// Path: <root>
class _StringsJa implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override String get name => 'さんぷる';
	@override String get font_family => 'NotoJP';
	@override late final _StringsMainMenuJa main_menu = _StringsMainMenuJa._(_root);
	@override late final _StringsDevMenuJa dev_menu = _StringsDevMenuJa._(_root);
}

// Path: main_menu
class _StringsMainMenuJa implements _StringsMainMenuEn {
	_StringsMainMenuJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'メインメニュー';
}

// Path: dev_menu
class _StringsDevMenuJa implements _StringsDevMenuEn {
	_StringsDevMenuJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '開発メニュー';
	@override String get read => '読み込み';
	@override String get write => '書き込み';
	@override String get nfc_initializing => 'NFC初期化中...';
	@override String get nfc_enabled => 'NFC許可';
	@override String get nfc_disabled => 'NFC不許可';
}

// Path: <root>
class _StringsZhCn implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsZhCn _root = this; // ignore: unused_field

	// Translations
	@override String get name => 'さんぷる';
	@override String get font_family => 'Roboto';
	@override late final _StringsMainMenuZhCn main_menu = _StringsMainMenuZhCn._(_root);
	@override late final _StringsDevMenuZhCn dev_menu = _StringsDevMenuZhCn._(_root);
}

// Path: main_menu
class _StringsMainMenuZhCn implements _StringsMainMenuEn {
	_StringsMainMenuZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'メインメニューCN';
}

// Path: dev_menu
class _StringsDevMenuZhCn implements _StringsDevMenuEn {
	_StringsDevMenuZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '開発メニュー';
	@override String get read => '読み込み';
	@override String get write => '書き込み';
	@override String get nfc_initializing => 'NFC初期化中...';
	@override String get nfc_enabled => 'NFC許可';
	@override String get nfc_disabled => 'NFC不許可';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'name': return 'Sample';
			case 'font_family': return 'Roboto';
			case 'main_menu.title': return 'Main Menu';
			case 'dev_menu.title': return 'Development Menu';
			case 'dev_menu.read': return 'Read';
			case 'dev_menu.write': return 'Write';
			case 'dev_menu.nfc_initializing': return 'Initializing NFC...';
			case 'dev_menu.nfc_enabled': return 'NFC Enabled';
			case 'dev_menu.nfc_disabled': return 'NFC Disabled';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'name': return 'さんぷる';
			case 'font_family': return 'NotoJP';
			case 'main_menu.title': return 'メインメニュー';
			case 'dev_menu.title': return '開発メニュー';
			case 'dev_menu.read': return '読み込み';
			case 'dev_menu.write': return '書き込み';
			case 'dev_menu.nfc_initializing': return 'NFC初期化中...';
			case 'dev_menu.nfc_enabled': return 'NFC許可';
			case 'dev_menu.nfc_disabled': return 'NFC不許可';
			default: return null;
		}
	}
}

extension on _StringsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'name': return 'さんぷる';
			case 'font_family': return 'Roboto';
			case 'main_menu.title': return 'メインメニューCN';
			case 'dev_menu.title': return '開発メニュー';
			case 'dev_menu.read': return '読み込み';
			case 'dev_menu.write': return '書き込み';
			case 'dev_menu.nfc_initializing': return 'NFC初期化中...';
			case 'dev_menu.nfc_enabled': return 'NFC許可';
			case 'dev_menu.nfc_disabled': return 'NFC不許可';
			default: return null;
		}
	}
}
