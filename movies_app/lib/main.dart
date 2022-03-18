import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/bindings.dart';
import '../screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      home: MoviesScreen(),
    );
  }
}
