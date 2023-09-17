import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowOfButtonCubit extends Cubit<int>{
  RowOfButtonCubit() : super(0);

  final PageController pageController = PageController();


  void firstButton(){
    pageController.jumpToPage(0);
    emit(0);
  }
  void secondButton(){
    pageController.jumpToPage(1);
    emit(1);
  }
  void thirdButton(){
    pageController.jumpToPage(2);
    emit(2);
  }

  void listenerForPageView(double? page){
      page ??= 0.0;
      if(page==0){
        emit(0);
      }
      if(page==1){
        emit(1);
      }
      if(page==2){
        emit(2);
      }
  }
}