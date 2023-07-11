import 'package:flutter/material.dart';
import 'package:test_project/home_page.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //5 seconds delay
  Future<String> getData() {
    return Future.delayed(const Duration(seconds: 5)).then(
      (value) => "This is Data!!",
    );
  }

  @override
  Widget build(BuildContext context) {
    //provider
    return FutureProvider<String>(
      initialData: "Loading data...",
      create: (context) => getData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
