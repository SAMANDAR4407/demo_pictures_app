// import 'package:demo_pictures_app/page/setstate/home_page.dart';
// import 'package:demo_pictures_app/page/bloc/home_page.dart';
import 'package:demo_pictures_app/page/freezed/home_page.dart';
import 'package:demo_pictures_app/page/image_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/image', page: () => const ImagePage(),)
      ],
      home: const HomePage(),
    );
  }
}
