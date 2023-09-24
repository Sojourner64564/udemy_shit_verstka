import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationOfRowButton extends Cubit<double>{
  AnimationOfRowButton() : super(0);


  void listenerForButtonAnimation(double? page){
    page ??= 0.0;
    emit(page);
  }

}