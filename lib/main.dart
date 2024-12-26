import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final controllerC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
        theme: controllerC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final c = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar GetX"),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Angka ${c.counter}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => c.increment(), child: Icon(Icons.add))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.changeTheme(),
        child:
            Icon(c.isDark.value ? Icons.flashlight_on : Icons.flashlight_off),
      ),
    );
  }
}
