import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TotalNumberCubit extends Cubit<int>{
  TotalNumberCubit() : super(0);

  void initTotalNumber(List<String> moneyList){
    int total = 0;
    for(int i=0;i<moneyList.length;i++){
      print(moneyList[i]);
      total = total + int.parse(moneyList[i]);
    }
    print(total);
    emit(total);
  }
}