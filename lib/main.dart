import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/orang_controller.dart';

void main() {
  Get.put(OrangController());
  runApp(const MyApp());
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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar State Management GetX"),
      ),
      body: Center(
        //Disini GetBuilder sama sama getxbuilder isinya sama sih, jadi ga perlu pusing
        child: GetBuilder<OrangController>(
          builder: (controller) {
            return Text(
              "Haloo nama aku ${controller.orang.nama}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            );
          },
        ),
      ),
      floatingActionButton: GetBuilder<OrangController>(
        builder: (controller) {
          return FloatingActionButton(
            onPressed: () {
              controller.isUpper
                  ? controller.changeToLoweCase()
                  : controller.chageToUpperCase();
            },
            child: Icon(
              controller.isUpper ? Icons.text_decrease : Icons.text_increase,
            ),
          );
        },
      ),
    );
  }
}
