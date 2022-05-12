import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inova_task/modules/training_series/cubit/states.dart';
class ScreenCubit extends Cubit<ScreenStates> {
  ScreenCubit() : super(InitialState());
  static ScreenCubit get(context) => BlocProvider.of(context);
   List items =[];
  Future<void> readJson() async {
    await rootBundle.loadString('assets/sample.json').then((value) async {
      final data = await json.decode(value);
      items=data['TrainingSeries'];
      emit(SuccessState());
    }).catchError((error){
      emit(ErrorState(error.toString()));
    });
  }


}