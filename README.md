# Network PDF

#### 1. Add `pdf_viewer_plugin`on pubspec.yml with github

      pdf_viewer_plugin:
        git:
          url: https://github.com/erluxman/Pdf_Viewer_Plugin.git

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
                
## Demo
            
![demo](art/network_pdf.gif)