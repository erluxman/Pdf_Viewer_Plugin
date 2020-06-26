import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:uuid/uuid.dart';

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
            child: PdfView(
                'https://firebasestorage.googleapis.com/v0/b/takefin-app.appspot.com/o/erluxman%2Freceipts%2FJoshua%20Bloch%20-%20Effective%20Java%20(3rd)%20-%202018.pdf?alt=media&token=14d91ff2-bb24-4faa-91e7-2325fdbcef0a',
                height: 300,
                width: 200),
          ),
        ));
  }
}

class PdfView extends StatefulWidget {
  const PdfView(this.filePath, {this.width = 150, this.height = 250});

  final String filePath;
  final double height;
  final double width;

  @override
  _PdfViewState createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  String path;

  Future<File> get _localFile async {
    final String path = (await getApplicationDocumentsDirectory()).path;
    return File('$path/${Uuid().toString()}.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<bool> existsFile() async {
    final file = await _localFile;
    return file.exists();
  }

  Future<Uint8List> fetchPost() async {
    final response = await http.get(widget.filePath);
    final responseJson = response.bodyBytes;

    return responseJson;
  }

  void loadPdf() async {
    await writeCounter(await fetchPost());
    await existsFile();
    path = (await _localFile).path;

    if (!mounted) return;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadPdf();
  }

  @override
  Widget build(BuildContext context) {
    return (path != null)
        ? Container(
            height: widget.height,
            width: widget.width,
            child: PdfViewer(
              filePath: path,
            ),
          )
        : Image.asset(
            "assets/images/pdf.png",
            height: widget.height,
            width: widget.width,
          );
  }
}
