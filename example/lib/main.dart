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
            title: Text("Pdf test"),
          ),
          body: Center(
            child: PDF.network(
                'https://firebasestorage.googleapis.com/v0/b/takefin-app.appspot.com/o/erluxman%2Freceipts%2FJoshua%20Bloch%20-%20Effective%20Java%20(3rd)%20-%202018.pdf?alt=media&token=14d91ff2-bb24-4faa-91e7-2325fdbcef0a',
                height: 500,
                width: 300),
          ),
        ));
  }
}
