import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final model = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Image.network(
            model.downloadUrl,
            fit: BoxFit.cover,
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,),
      ),
    ]);
  }
}
