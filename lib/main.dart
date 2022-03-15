import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:inova_task/layout/layout.dart';
import 'package:inova_task/shared/network/local/bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Layout(),
    );
  }
}