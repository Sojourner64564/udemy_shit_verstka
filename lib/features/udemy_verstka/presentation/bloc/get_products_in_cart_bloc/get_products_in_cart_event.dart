part of 'get_products_in_cart_bloc.dart';

abstract class GetProductsInCartEvent extends Equatable {
  const GetProductsInCartEvent();
}

class GetCartEvent extends GetProductsInCartEvent {

  @override
  List<Object?> get props => [];
}
