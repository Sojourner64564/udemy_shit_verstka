import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/first_screen/first_screen.dart';
import 'core/injectable/injectable.dart';

void main() {
  Hive.initFlutter();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  const FirstScreen(),
    );
  }
}

