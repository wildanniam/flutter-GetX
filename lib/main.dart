import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/orang_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final orangC = Get.put(OrangController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text("Belajar State Management GetX"),
          ),
          body: Center(
            child: Text(
              "Haloo nama aku ${orangC.orang.nama.value}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (orangC.isUpper.value) {
                orangC.changeToLoweCase();
              } else {
                orangC.chageToUpperCase();
              }
            },
            child: Icon(orangC.isUpper.value
                ? Icons.text_decrease
                : Icons.text_increase),
          )),
    );
  }
}
