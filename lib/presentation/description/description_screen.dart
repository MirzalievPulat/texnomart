import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:texnomart/data/repository/repository.dart';
import 'package:texnomart/di/di.dart';

class DescriptionScreen extends StatefulWidget {
  final int id;

  const DescriptionScreen({super.key, required this.id});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final repository = getIt.get<Repository>();
  late final String description;
  bool loading = true;

  @override
  void initState() {
    getDescription();
    super.initState();
  }

  Future<void> getDescription() async{
    print("getDescription started");
    setState(() {
      loading = true;
    });
    try {
      final des = await repository.getDescription(widget.id);
      print("getDescription result: ${des}");
      description = _convertHtmlToText(des);
    } on DioException catch (e) {
      print("getDescription error: ${e.message}");
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "Tavsif",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: (loading)
          ? const Center(
            child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
          )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(description),
              ),
            ),
    );
  }
}

String _convertHtmlToText(String html) {
  // Parse the HTML content
  final document = parse(html);

  // Extract the plain text
  return document.body?.text ?? '';
  // return document.outerHtml;
}
