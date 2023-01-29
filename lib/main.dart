import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller_bindings.dart';
import 'package:getx_demo/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBindings(),
      home:const HomePage(),
    );
  }
}

