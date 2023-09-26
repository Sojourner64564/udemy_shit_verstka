part of 'get_products_in_cart_bloc.dart';

abstract class GetProductsInCartEvent extends Equatable {
  const GetProductsInCartEvent();
}

class GetCartEvent extends GetProductsInCartEvent {
  const GetCartEvent(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
