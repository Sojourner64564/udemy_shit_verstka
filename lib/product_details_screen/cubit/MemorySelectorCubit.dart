import 'package:flutter_bloc/flutter_bloc.dart';

class MemorySelectorCubit extends Cubit<int>{
  MemorySelectorCubit() : super(0);

  void firstButton(){
    emit(0);
  }
  void secondButton(){
    emit(1);
  }
}