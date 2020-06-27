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
                'https://firebasestorage.googleapis.com/v0/b/takefin-app.appspot.com/o/erluxman%2Freceipts%2FJoshua%20Bloch%20-%20Effective%20Java%20(3rd)%20-%202018.pdf?alt=media&token=14d91ff2-bb24-4faa-91e7-2325fdbcef0a',
                height: 500,
                width: 300,
                )