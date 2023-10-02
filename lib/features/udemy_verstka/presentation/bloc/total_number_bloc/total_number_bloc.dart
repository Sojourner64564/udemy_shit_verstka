import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'total_number_event.dart';
part 'total_number_state.dart';

@lazySingleton
class TotalNumberBloc extends Bloc<TotalNumberEvent, TotalNumberState> {
  TotalNumberBloc() : super(TotalNumberInitial()) {
    on<TotalNumberGetList>(_totalNumberGetList);
  }

  void _totalNumberGetList(TotalNumberGetList event, Emitter<TotalNumberState> state){
    emit(TotalNumberLoading());
    int total = 0;
    final moneyList = event.totalMoneyList;
    for(int i=0;i<moneyList.length;i++){
      print(moneyList[i]);
      total = total + int.parse(moneyList[i]);
    }
    print(total);
    emit(TotalNumberLoaded(total));
  }


}
