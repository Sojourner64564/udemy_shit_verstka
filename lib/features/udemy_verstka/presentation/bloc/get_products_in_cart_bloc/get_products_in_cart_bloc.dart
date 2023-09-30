import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/usecases/get_product_in_cart/get_product_in_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/cubit/total_number_cubit.dart';


part 'get_products_in_cart_event.dart';
part 'get_products_in_cart_state.dart';

@lazySingleton
class GetProductsInCartBloc extends Bloc<GetProductsInCartEvent, GetProductsInCartState> {
  GetProductsInCartBloc(this.getProductInCart, this.totalNumberCubit) : super(EmptyState()) {
    on<GetCartEvent>(_getCartEvent);
    on<UpdateCartEvent>(_updateCartEvent);
    on<UpdateMoneySumEvent>(_updateMoneySumEvent);
  }

  final GetProductInCart getProductInCart;
  final List<MobilePhoneEntity> cartList = [];
  final List<String> moneySumList = [];
  final TotalNumberCubit totalNumberCubit;

  void _updateMoneySumEvent(UpdateMoneySumEvent event, Emitter<GetProductsInCartState> state) async{
    emit(LoadingState());
    moneySumList.clear();
    final myBox = await Hive.openBox('myBox');
    final listOfKeys = myBox.keys.toList();
    final listOfValues = myBox.values.toList();
    final boxMap = myBox.toMap();

    for(int i=0;i<listOfKeys.length;i++){
      final mobileAmount = boxMap[listOfKeys[i] as String] as int;
      final id = int.parse(cartList[i].newCost);
      moneySumList.add((mobileAmount*id).toString());

    }
    totalNumberCubit.initTotalNumber(moneySumList);
    emit(LoadedState(cartList, listOfValues, moneySumList));
  }


  void _updateCartEvent(UpdateCartEvent event, Emitter<GetProductsInCartState> state) async{
    emit(LoadingState());
    final myBox = await Hive.openBox('myBox');
    final listOfValues = myBox.values.toList();
    late MobilePhoneEntity mobilePhoneEntity;
    mobilePhoneEntity = event.mobilePhoneEntity;
    cartList.remove(mobilePhoneEntity);
    emit(LoadedState(cartList, listOfValues, moneySumList));


  }


  void _getCartEvent(GetCartEvent event, Emitter<GetProductsInCartState> state) async{
    emit(LoadingState());
    cartList.clear();
    moneySumList.clear();
    final myBox = await Hive.openBox('myBox');
    final listOfKeys = myBox.keys.toList();
    final listOfValues = myBox.values.toList();
    final boxMap = myBox.toMap();
    print(myBox.keys.toList());
    print(myBox.values.toList());

    //{4: 0,   3: 4,   7: 0}

    for(int i=0;i<listOfKeys.length;i++){
      final failureOrProductInCartEither = await getProductInCart.call(Params(id: listOfKeys[i]));
      final failureOrProduct = failureOrProductInCartEither.fold((failure) => ServerFailure(), (mobilePhone) => mobilePhone);
      if(failureOrProduct==ServerFailure()){
        throw UnimplementedError();
      }
      cartList.add(failureOrProduct as MobilePhoneEntity);
    }

    for(int i=0;i<listOfKeys.length;i++){
      final mobileAmount = boxMap[listOfKeys[i] as String] as int;
      final id = int.parse(cartList[i].newCost);
      moneySumList.add((mobileAmount*id).toString());

    }
    totalNumberCubit.initTotalNumber(moneySumList);
    emit(LoadedState(cartList, listOfValues, moneySumList));
  }



}
