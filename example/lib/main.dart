import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';

void main() => runApp(PdfApp());

class PdfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("NetworkPDFView"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                NetworkPDFView(
                    'https://raw.githubusercontent.com/FlutterInThai/Dart-for-Flutter-Sheet-cheet/master/Dart-for-Flutter-Cheat-Sheet.pdf',
                    height: 500,
                    width: 300),
                Image.network(
                    "https://pbs.twimg.com/media/Eba5HXdVAAAqrES?format=jpg&name=medium"),
              ],
            ),
          ),
        ));
  }
}
