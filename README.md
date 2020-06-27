# Network PDF view

Forked from [lubritto/Pdf_Viewer_Plugin](https://github.com/lubritto/Pdf_Viewer_Plugin)

[![pub package](https://img.shields.io/pub/v/pdf_viewer_plugin.svg)](https://pub.dartlang.org/packages/pdf_viewer_plugin)

#### 1. Add `pdf_viewer_plugin: ^version`on pubspec.yml

#### 2. On iOS enable preview like this:

Add this on `ios/Runner/info.plist`:

        <key>io.flutter.embedded_views_preview</key>
        <true/>

#### 3. Start Using

        PDF.network(
                'https://raw.githubusercontent.com/FlutterInThai/Dart-for-Flutter-Sheet-cheet/master/Dart-for-Flutter-Cheat-Sheet.pdf',
                height: 500,
                width: 300,
                )