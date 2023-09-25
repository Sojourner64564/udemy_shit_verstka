import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/total_number_cubit.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/for_example/cart_mobile_phone.dart';

class AddDeleteToCart extends Cubit<List<CartMobilePhone>>{
  AddDeleteToCart() : super([]);

  final List<CartMobilePhone> cartMobilePhones = [
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
      if(map.keys.toList().contains('$i')){
        count++;
        cartMobilePhones[i].amount = map.values.toList()[count];
      }
    }
    final cartList = <CartMobilePhone>[];
    for(int i=0;i<cartMobilePhones.length;i++){
      if(cartMobilePhones[i].amount!=0){
       cartList.add(cartMobilePhones[i]);
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
    for(int i=0;i<cartMobilePhones.length;i++){
      cartMobilePhones[i].amount = 0;
    }
    cartBox.close();
  }


}