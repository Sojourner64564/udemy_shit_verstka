import 'package:flutter_bloc/flutter_bloc.dart';

class ColorSelectorCubit extends Cubit<int>{
  ColorSelectorCubit() : super(0);

  void firstButton(){
    emit(0);
  }
  void secondButton(){
    emit(1);
  }
}