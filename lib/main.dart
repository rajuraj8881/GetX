import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = "click".obs;
  RxInt count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Obx(() => Text('${text.value} ${count.value}')),
          onPressed: () {
            text.value = 'clicked';
            count.value++;
          },
        ),
      ),
    );
  }
}
