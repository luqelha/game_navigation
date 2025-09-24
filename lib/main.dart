import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'tujuan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0081c9)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        Tujuan.routeName: (context) => const Tujuan(),
      },
    );
  }
}
