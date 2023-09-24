import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/for_example/cart_mobile_phone.dart';

class TotalNumberCubit extends Cubit<String>{
  TotalNumberCubit() : super('0');

  void initTotalNumber(List<CartMobilePhone> cartList){
    int total = 0;
    for(int i=0;i<cartList.length;i++){
      total = total + cartList[i].amountCost;
    }
    emit(total.toString());
  }
}