import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mycontroller.dart';

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
  // var text = "click".obs;
  // RxInt count = 0.obs;
  // List text = ['item1', 'item2'].obs; //import this list from MyController
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Obx(() => Text('${text.value} ${count.value}')),
      //     onPressed: () {
      //       text.value = 'clicked';
      //       count.value++;
      //     },
      //   ),
      // ),
      body: Obx(
        () => ListView.builder(
          itemCount: myController.text.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(myController.text[index]),
            onTap: () {
              myController.text.add('item $index');
            },
          ),
        ),
      ),
    );
  }
}
