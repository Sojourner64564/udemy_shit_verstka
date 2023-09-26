import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:udemy_shit_verstka/features/udemy_verstka/domain/repositories/cart_product_repository/cart_product_repository.dart';

part 'get_products_in_cart_event.dart';
part 'get_products_in_cart_state.dart';

@lazySingleton
class GetProductsInCartBloc extends Bloc<GetProductsInCartEvent, GetProductsInCartState> {
  GetProductsInCartBloc(this.cartProductRepository) : super(EmptyState()) {
    on<GetCartEvent>(_getCartEvent);
  }

  final CartProductRepository cartProductRepository;

  void _getCartEvent(GetCartEvent event, Emitter<GetProductsInCartState> state) async{
    emit(EmptyState());
  }

}
