# 環境構築メモ

## flutter doctor

flutter doctor で問題が出なくなるまで設定する

```shell
$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.7.9, on macOS 13.1 22C65 darwin-x64, locale ja-JP)
[✓] Android toolchain - develop for Android devices (Android SDK version 30.0.3)
[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2022.1)
[✓] IntelliJ IDEA Community Edition (version 2022.1.4)
[✓] VS Code (version 1.73.1)
[✓] Connected device (2 available)
[✓] HTTP Host Availability

• No issues found!
```

## flutter create

flutter create でアプリを作成する

```shell
$ flutter create flutter_app
Signing iOS app for device deployment using developer identity: "Apple Development: XXXX (XXX)"
Creating project flutter_app...
Running "flutter pub get" in flutter_app...
Resolving dependencies in flutter_app... (1.2s)
+ async 2.10.0 (2.11.0 available)
+ boolean_selector 2.1.1
+ characters 1.2.1 (1.3.0 available)
+ clock 1.1.1
+ collection 1.17.0 (1.17.1 available)
+ cupertino_icons 1.0.5
+ fake_async 1.3.1
+ flutter 0.0.0 from sdk flutter
+ flutter_lints 2.0.1
+ flutter_test 0.0.0 from sdk flutter
+ js 0.6.5 (0.6.7 available)
+ lints 2.0.1
+ matcher 0.12.13 (0.12.15 available)
+ material_color_utilities 0.2.0 (0.3.0 available)
+ meta 1.8.0 (1.9.1 available)
+ path 1.8.2 (1.8.3 available)
+ sky_engine 0.0.99 from sdk flutter
+ source_span 1.9.1
+ stack_trace 1.11.0
+ stream_channel 2.1.1
+ string_scanner 1.2.0
+ term_glyph 1.2.1
+ test_api 0.4.16 (0.5.1 available)
+ vector_math 2.1.4
Changed 24 dependencies in flutter_app!
Wrote 127 files.

All done!
You can find general documentation for Flutter at: https://docs.flutter.dev/
Detailed API documentation is available at: https://api.flutter.dev/
If you prefer video documentation, consider: https://www.youtube.com/c/flutterdev

In order to run your application, type:

  $ cd flutter_app
  $ flutter run

Your application code is in flutter_app/lib/main.dart.
```

## flutter run

Chrome で実行

```shell
$ flutter run
(Chrome を選ぶ)
```

## flutter emulators

色々やっていたので emulators が入っていた

```shell
$ flutter emulators
5 available emulators:

apple_ios_simulator • iOS Simulator       • Apple  • ios
Nexus_5X_API_28_x86 • Nexus 5X API 28 x86 • Google • android
Pixel_2_API_28      • Pixel 2 API 28      • Google • android
Pixel_4_API_30      • Pixel 4 API 30      • Google • android
Pixel_6_API_30      • Pixel 6 API 30      • Google • android
```

```shell
flutter emulators --launch Nexus_5X_API_28_x86
```

エミュレータが起動した

```shell
flutter run
```

エミュレータ側で起動した
(このあたりで、なぜかflutter SDKが壊れていたのでSDKを再インストールした)
