import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/core/error/failures.dart';
import 'package:udemy_shit_verstka/core/usecases/params/params.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/entities/mobile_phone_entity.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/usecases/get_product_in_cart/get_product_in_cart.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/presentation/screens/cart_screen/for_example/cart_mobile_phone.dart';

part 'get_products_in_cart_event.dart';
part 'get_products_in_cart_state.dart';

@lazySingleton
class GetProductsInCartBloc extends Bloc<GetProductsInCartEvent, GetProductsInCartState> {
  GetProductsInCartBloc(this.getProductInCart) : super(EmptyState()) {
    on<GetCartEvent>(_getCartEvent);
  }

  final CartMobilePhone cartMobilePhone = CartMobilePhone(
      id: 'id',
      amount: 0,
      amountCost: 0,
      newCost: 'newCost',
      productName: 'productName',
      imgAssetLink: 'imgAssetLink',
  );
  final GetProductInCart getProductInCart;


  void _getCartEvent(GetCartEvent event, Emitter<GetProductsInCartState> state) async{
    emit(LoadingState());
    final myBox = await Hive.openBox('myBox');
    final List<MobilePhoneEntity> cartList = [];
    final listOfKeys = myBox.keys.toList();
    final listOfValues = myBox.values.toList();
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

    emit(LoadedState(cartList, listOfValues));
  }



}