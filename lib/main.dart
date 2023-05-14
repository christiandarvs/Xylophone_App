import 'package:flutter/material.dart';
import 'package:xylophone_app/xylophone.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Xylophone(),
    );
  }
}
