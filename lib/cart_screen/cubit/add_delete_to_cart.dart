import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:udemy_shit_verstka/cart_screen/for_example/cart_mobile_phone.dart';
import 'package:udemy_shit_verstka/cubit/total_number_cubit.dart';

class AddDeleteToCart extends Cubit<List<CartMobilePhone>>{
  AddDeleteToCart() : super([]);

  final List<CartMobilePhone> mobilePhones = [
    CartMobilePhone(
        id: '0',
        amount: 0,
        amountCost: 0,
        newCost: '1213',
        productName: 'Samsung Galaxy S23',
        imgAssetLink: 'assets/images/s23ultra.jpg',
    ),
    CartMobilePhone(
      id: '1',
      amount: 0,
      amountCost: 0,
      newCost: '300',
      productName: 'Honor 8 Lite',
      imgAssetLink: 'assets/images/honor8lite.jpg',
    ),
    CartMobilePhone(
      id: '2',
      amount: 0,
      amountCost: 0,
      newCost: '230',
      productName: 'Samsung Galaxy Note 8',
      imgAssetLink: 'assets/images/note8.jpg',
    ),
    CartMobilePhone(
      id: '3',
      amount: 0,
      amountCost: 0,
      newCost: '720',
      productName: 'Xiaomi Mi 9',
      imgAssetLink: 'assets/images/xiaomimi9.jpg',
    )
  ];
late TotalNumberCubit totalNumberCubit;

  Future<void> addToCart(String id) async {
    final cartBox = await Hive.openBox('myBox');
    final value = cartBox.get(id);
    if(value!=null){
      cartBox.put(id, value+1);
    }else{
      cartBox.put(id, 1);
    }
    await initCart();
  }

  Future<void> decreaseFromCart(String id) async {
    final cartBox = await Hive.openBox('myBox');
    final value = cartBox.get(id);
    if(value!=null){
      cartBox.put(id, value-1);
    }
    await initCart();
  }

  Future<void> deleteFromCart(String id) async {
    final cartBox = await Hive.openBox('myBox');
    final value = cartBox.get(id);
    if(value!=null){
      cartBox.put(id, value-value);
    }
    await initCart();
  }

  Future<void> initCart() async {
    final cartBox = await Hive.openBox('myBox');
    final map = cartBox.toMap();
    int count = -1;
    for(int i=int.parse(map.keys.toList().first);i<=int.parse(map.keys.toList().last);i++){
     /* if(map.keys.toList()[i]==i.toString()){
        mobilePhones[i].amount = map.values.toList()[i];
      }*/
      /*print('not circle for');
      int myInt = 0;
      if(map.keys.toList().contains('$i')){
        print('circle for');
        if(map.keys.toList()[myInt]==i.toString()){
          mobilePhones[myInt].amount = map.values.toList()[i];
          myInt++;
        }
      }*/
      if(map.keys.toList().contains('$i')){
        count++;
        mobilePhones[i].amount = map.values.toList()[count];
      }
    }
    final cartList = <CartMobilePhone>[];
    for(int i=0;i<mobilePhones.length;i++){
      if(mobilePhones[i].amount!=0){
       cartList.add(mobilePhones[i]);
      }
    }
    for(int i=0;i<cartList.length;i++){
      final intCost = int.parse(cartList[i].newCost);
      cartList[i].amountCost = (intCost * cartList[i].amount);
    }
    totalNumberCubit.initTotalNumber(cartList);
    emit(cartList.toList());
    cartBox.close();
  }

  Future<void> clearHive() async {
    final cartBox = await Hive.openBox('myBox');
    cartBox.clear();
    for(int i=0;i<mobilePhones.length;i++){
      mobilePhones[i].amount = 0;
    }
    cartBox.close();
  }


}