part of 'get_products_in_cart_bloc.dart';

abstract class GetProductsInCartState extends Equatable {
  const GetProductsInCartState();
}

class EmptyState extends GetProductsInCartState {
  final int lenght = 0;

  @override
  List<Object> get props => [lenght];
}

class LoadingState extends GetProductsInCartState {
  final int lenght = 0;

  @override
  List<Object> get props => [lenght];
}

class LoadedState extends GetProductsInCartState {
  const LoadedState(this.cartList, this.amountList, this.moneySum);
  final List<MobilePhoneEntity> cartList;
  final List<dynamic> amountList;
  final List<dynamic> moneySum;
  @override
  List<Object> get props => [cartList, amountList, moneySum];
}

class ErrorState extends GetProductsInCartState {
  final int lenght = 0;
  @override
  List<Object> get props => [];
}