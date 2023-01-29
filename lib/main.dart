import 'package:flutter/material.dart';
import 'package:getx/secondpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/second': (context) => const SecondPage(),
      },
      // home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const SecondPage(),
            //   ),
            // );
            // Get.to(const SecondPage());
            // Get.off(const SecondPage());
            Navigator.of(context).pushNamed('/second');
          },
          child: const Text("Go to Next"),
        ),
      ),
    );
  }
}
