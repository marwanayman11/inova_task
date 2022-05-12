import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:inova_task/modules/training_series/training_series.dart';
import 'package:inova_task/shared/network/local/bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () {
          runApp(const MyApp());
        },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const TrainingSeries(),
    );
  }
}